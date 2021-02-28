#ifndef __CONDITIONAL_H_
#define __CONDITIONAL_H_

#ifdef _NUMBER
#  undef _NUMBER
#endif

#ifdef _BAR
#  define _NUMBER 47
#else
#  define _NUMBER 2
#endif

#endif /* __CONDITIONAL_H_ */
