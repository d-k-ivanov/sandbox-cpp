/* 
** NetXMS subagent for GNU/Linux
** Copyright (C) 2004-2016 Raden Solutions
**
** This program is free software; you can redistribute it and/or modify
** it under the terms of the GNU General Public License as published by
** the Free Software Foundation; either version 2 of the License, or
** (at your option) any later version.
**
** This program is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
** GNU General Public License for more details.
**
** You should have received a copy of the GNU General Public License
** along with this program; if not, write to the Free Software
** Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
**
** File        :  lvm.cpp
** Descriprion :  Logical Volume Manager(LVM) submodule
** Dependencies:  liblvm(ldevmapper, lvm2app)
**
**/

#include "linux_subagent.h"

/**
 * Handler for Lvm.Vg.Status(*)
 */
LONG H_LvmVgStatus(const TCHAR *pszParam, const TCHAR *pArg, TCHAR *pValue, AbstractCommSession *session)
{
	char name[MAX_LVM_NAME_LEN];

	if (!AgentGetParameterArgA(pszParam, 1, name, MAX_LVM_NAME_LEN))
      return SYSINFO_RC_UNSUPPORTED;

   LONG rc = SYSINFO_RC_UNSUPPORTED;

   lvm_t libh;
	vg_t vg;
	struct dm_list *vgnames;
	struct lvm_str_list *strl;
	const char * vgname;

	libh = lvm_init(NULL);
	if (!libh) 
	{
		AgentWriteDebugLog(4, _T("Linux: H_LvmVgStatus: Unable to open lvm library instance"));
		rc = SYSINFO_RC_ERROR;
	}

	if (lvm_scan(libh))
	{
		AgentWriteDebugLog(4, _T("Linux: H_LvmVgStatus: Unable to find any volume groups"));
		rc = SYSINFO_RC_ERROR;
	}

	vgnames = lvm_list_vg_names(libh);

	dm_list_iterate_items(strl, vgnames) 
	{
 		vgname = strl->str;
 		vg = lvm_vg_open(libh, vgname, "r", 0);
 		if (!strcmp(vgname, name))
 		{
 			if (lvm_vg_is_partial(vg))
 			{
 				ret_mbstring(pValue, "partial");
         	rc = SYSINFO_RC_SUCCESS;
				break;
 			}
 			else
 			{
 				ret_mbstring(pValue, "full");
         	rc = SYSINFO_RC_SUCCESS;
				break;
			}
 		}
 		
 		lvm_vg_close(vg);
 	}

	lvm_quit(libh);
	
	return rc;
}

/**
 * Handler for Lvm.Lv.Status(*)
 */
LONG H_LvmLvStatus(const TCHAR *pszParam, const TCHAR *pArg, TCHAR *pValue, AbstractCommSession *session)
{
	char name[MAX_LVM_NAME_LEN];

	if (!AgentGetParameterArgA(pszParam, 1, name, MAX_LVM_NAME_LEN))
      return SYSINFO_RC_UNSUPPORTED;

   LONG rc = SYSINFO_RC_UNSUPPORTED;

   lvm_t libh;
	vg_t vg;
	struct dm_list *vgnames;
	struct lvm_str_list *strl;
	const char * vgname;
	lv_t lv;
	const char * lvname = name;
	
	libh = lvm_init(NULL);
	if (!libh) 
	{
		AgentWriteDebugLog(4, _T("Linux: H_LvmLvStatus: Unable to open lvm library instance"));
		rc = SYSINFO_RC_ERROR;
	}

	if (lvm_scan(libh))
	{
		AgentWriteDebugLog(4, _T("Linux: H_LvmLvStatus: Unable to find any volume groups"));
		rc = SYSINFO_RC_ERROR;
	}

	vgnames = lvm_list_vg_names(libh);

	dm_list_iterate_items(strl, vgnames) 
	{
 		vgname = strl->str;
 		vg = lvm_vg_open(libh, vgname, "r", 0);

 		if (lv = lvm_lv_from_name(vg, lvname))
 		{
 			lvm_lv_is_active(lv)?ret_mbstring(pValue, "active"):ret_mbstring(pValue, "inactive");
 			rc = SYSINFO_RC_SUCCESS;
			break;
 		}
 		lvm_vg_close(vg);
 	}

	lvm_quit(libh);
	
	return rc;
}


/**
 * Handler for Lvm.* parameters
 */
LONG H_LvmInfo(const TCHAR *pszParam, const TCHAR *pArg, TCHAR *pValue, AbstractCommSession *session)
{
	char name[MAX_LVM_NAME_LEN];

	if (!AgentGetParameterArgA(pszParam, 1, name, MAX_LVM_NAME_LEN))
      return SYSINFO_RC_UNSUPPORTED;

   LONG rc = SYSINFO_RC_UNSUPPORTED;

   lvm_t libh;
	struct dm_list *vgnames;
	struct lvm_str_list *strl;
	
	vg_t vg;
	const char * vgname;
	
	lv_t lv;
	const char * lvname = name;

	uint64_t size = 0;
		
	libh = lvm_init(NULL);
	if (!libh) 
	{
		AgentWriteDebugLog(4, _T("Linux: H_LvmInfo: Unable to open lvm library instance"));
		return SYSINFO_RC_ERROR;
	}

	if (lvm_scan(libh))
	{
		AgentWriteDebugLog(4, _T("Linux: H_LvmInfo: Unable to find any volume groups"));
		return SYSINFO_RC_ERROR;
	}

	vgnames = lvm_list_vg_names(libh);

	dm_list_iterate_items(strl, vgnames) 
	{
 		vgname = strl->str;
 		if (!(vg = lvm_vg_open(libh, vgname, "r", 0)))
 		{
			AgentWriteDebugLog(4, _T("Linux: H_LvmInfo: Unable to open volume group"));
			return SYSINFO_RC_ERROR;
		}

 				
 		switch((long)pArg)
			{
				case LVM_VG_SIZE:
					if (!strcmp(vgname, name) && (size = lvm_vg_get_size(vg)))
					{
 						ret_uint64(pValue, size);
 						rc = SYSINFO_RC_SUCCESS;
					}
 					break;
				case LVM_LV_SIZE:
					if ((lv = lvm_lv_from_name(vg, lvname)) && (size = lvm_lv_get_size(lv)))
 					{
 						ret_uint64(pValue, size);
 						rc = SYSINFO_RC_SUCCESS;
 					}
					break;
				default:
					rc = SYSINFO_RC_ERROR;
					break;
			}


 		lvm_vg_close(vg);
 	}

	lvm_quit(libh);
	
	return rc;
}
