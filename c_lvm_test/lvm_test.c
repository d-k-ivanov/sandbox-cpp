#define __STDC_FORMAT_MACROS
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <inttypes.h>
#include <assert.h>

#include "lvm2app.h"

int main(int argc, char *argv[])
{
   
   char* vgName;
   vgName = argv[1];
   uint64_t ans_64;
   long ans_long;
   double ans_dbl;
   int ans_int;
   int count;

   lvm_t libh = lvm_init(NULL);
   if (!libh) 
   {
      fprintf(stderr, "Error: Unable to open lvm library instance");
      abort();
   }

   if (lvm_scan(libh))
   {
      fprintf(stderr, "Error: Unable to find any volume groups");
      lvm_quit(libh);
      abort();
   }

   vg_t vg = lvm_vg_open(libh, vgName, "r", 0);
   if (vg == NULL)
   {
      fprintf(stderr, "Error: Unable to open Volume Group");
      lvm_quit(libh);
      abort();
   }
   
   int sw_bt = atoi(argv[2]);   

   switch(sw_bt)
   {
      case 1:
         ans_64 = lvm_vg_get_free_size(vg);
         fprintf(stdout, "Answer: %" PRIu64 "\n", ans_64);
         break;
      case 2:
         ans_dbl = lvm_vg_get_free_size(vg) * 100.0 / lvm_vg_get_size(vg);
         fprintf(stdout, "Answer: %f \n", ans_dbl);
         break;
      case 3:
         struct dm_list          *logical_volumes;
         struct lvm_lv_list      *lv_iter;
         logical_volumes         = lvm_vg_list_lvs(vg);
         count                   = 0;
         dm_list_iterate_items(  lv_iter, logical_volumes)
            count++;
         ans_int = count;
         fprintf(stdout, "Answer: %d \n", ans_int);
         break;
      case 4:
         //ret_int(value,          vg->getActivePhysicalVolumes());
         struct dm_list          *phisical_volumes;
         struct lvm_pv_list      *pv_iter;
         struct lvm_property_value pv_prop;
         phisical_volumes        = lvm_vg_list_pvs(vg);
         count                   = 0;
         dm_list_iterate_items(pv_iter, phisical_volumes)
         {
            //if (lvm_pv_get_property(pv_iter->pv, "pv_missing"))
            //   ++ count;

            pv_prop = lvm_pv_get_property(pv_iter->pv, "pv_missing");
            if (!pv_prop.is_valid) {
               printf("Invalid property name or unable to query"
               "'%s', errno = %d.\n", "pv_missing", lvm_errno(libh));
               printf("%s\n", lvm_errmsg(libh));
               return 99;
            }
            fprintf(stdout, "Is missing = %" PRIu64 " \n", pv_prop.value);
         }
         ans_int = lvm_vg_get_pv_count(vg) - count;
         fprintf(stdout, "Answer: %d \n", ans_int);
         break;
      case 5:
         ans_int = lvm_vg_get_pv_count(vg);
         fprintf(stdout, "Answer: %d \n", ans_int);
         break;
      case 6:
         //ret_uint64(value,       vg->getPhyPartResync());
         ans_64 = 100;
         fprintf(stdout, "Answer: %" PRIu64 "\n", ans_64);
         break;
      case 7:
         //ret_uint64(value,       vg->getPhyPartStale());
         ans_64 = 100;
         fprintf(stdout, "Answer: %" PRIu64 "\n", ans_64);
         break;
      case 8:
         ans_64 = lvm_vg_get_size(vg);
         fprintf(stdout, "Answer: %" PRIu64 "\n", ans_64);
         break;
      case 9:
         ans_64 = lvm_vg_get_size(vg) - lvm_vg_get_free_size(vg);
         fprintf(stdout, "Answer: %" PRIu64 "\n", ans_64);
         break;
      case 10:
         ans_dbl = (lvm_vg_get_size(vg) - lvm_vg_get_free_size(vg)) * 100.0 / lvm_vg_get_size(vg);
         fprintf(stdout, "Answer: %f \n", ans_dbl);
         break;
      default:
         fprintf(stderr, "Error: Usupported");
         break;
   }
   
   lvm_vg_close(vg);
   lvm_quit(libh);
   
   return 0;
}

