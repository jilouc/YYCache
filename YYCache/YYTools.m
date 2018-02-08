//
//  YYTools.m
//  YYCache
//

#import "YYTools.h"
#import <Foundation/Foundation.h>
#include <mach/mach.h>
#include <mach/mach_time.h>

NSTimeInterval YYCurrentMediaTime(void)
{
    static mach_timebase_info_data_t sTimebaseInfo;
    uint64_t start = mach_absolute_time();
    if (sTimebaseInfo.denom == 0) {
        (void) mach_timebase_info(&sTimebaseInfo);
    }
    return (start * sTimebaseInfo.numer / sTimebaseInfo.denom) / 1000000.;
}
