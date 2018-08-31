//
//  FastRead.m
//  MmapSample
//
//  Created by everettjf on 2018/8/26.
//  Copyright © 2018 everettjf. All rights reserved.
//

#import "FastRead.h"
#include <unistd.h>
#include <mach/mach.h>
#include <sys/mman.h>

@implementation FastRead

+ (void)run
{
    long sz = sysconf(_SC_PAGESIZE);
    NSLog(@"page size = %ld bytes (%ld kb)",sz,sz/1024);
    
    
    int pagesize = getpagesize();
    NSLog(@"page size = %d bytes (%d kb)",pagesize,pagesize/1024);
    
    
    vm_size_t vmpagesize = 0;
    host_page_size(mach_host_self(), &vmpagesize);
    NSLog(@"vm page size = %lu bytes (%lu kb)",vmpagesize,vmpagesize/1024);
    
    vm_size_t vmkern = vm_kernel_page_size;
    NSLog(@"vm kern page size = %lu bytes (%lu kb)",vmkern,vmkern/1024);
    
    
    NSLog(@"page mask = %lu bytes (%lu kb)",PAGE_MASK,PAGE_MASK/1024);
    NSLog(@"page size = %lu bytes (%lu kb)",PAGE_SIZE,PAGE_SIZE/1024);
    
}

@end
