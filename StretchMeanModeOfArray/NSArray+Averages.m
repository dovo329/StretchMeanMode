//
//  NSArray+Averages.m
//  StretchMeanModeOfArray
//
//  Created by Douglas Voss on 5/26/15.
//  Copyright (c) 2015 DougsApps. All rights reserved.
//

#import "NSArray+Averages.h"

@implementation NSArray (Averages)

// mean is normal average
-(NSNumber *)meanOfArray
{
    double sum = 0.0;
    for (int i=0; i < [self count]; i++)
    {
        sum += [self[i] doubleValue];
    }
    double mean = sum / (double)([self count]);
    NSNumber *retNum = [NSNumber numberWithDouble:mean];
    return retNum;
}

// mode is number that's repeated most often
-(NSNumber *)modeOfArray
{
    NSMutableDictionary *mutDict = [NSMutableDictionary new];
    for (NSNumber *number in self)
    {
        NSNumber *numFreq = [mutDict objectForKey:number];
        if (numFreq == nil)
        {
            [mutDict setObject:@1 forKey:number];
        } else {
            int numFreqInt = [numFreq intValue];
            numFreqInt++;
            [mutDict setObject:[NSNumber numberWithInt:numFreqInt] forKey:number];
        }
    }
    
    int maxFreq = 0;
    NSNumber *keyForMax = nil;
    for (NSNumber *key in [mutDict allKeys])
    {
        int freq = [[mutDict objectForKey:key] intValue];
        NSLog(@"key: %f; freq: %d", [key doubleValue], freq);
        
        if (freq > maxFreq) {
            maxFreq = freq;
            keyForMax = key;
        }
    }
    
    NSLog(@"maxFreq: %d; keyForMax: %f", maxFreq, [keyForMax doubleValue]);
    
    return [NSNumber numberWithInt:maxFreq];
    
    
    /*NSSortDescriptor *highestToLowest = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:NO];
    NSMutableArray *mutArr = (NSMutableArray *)arr;
    //[mutArr sortUsingDescriptors:[NSArray arrayWithObject:highestToLowest]];
    [mutArr sortUsingComparator:^(id obj1, id obj2) {
        if (obj1 > obj2)
            return NSOrderedAscending;
        else if (obj1 < obj2)
            return NSOrderedDescending;
        
        return NSOrderedSame;
    }];
    
    for (int i=0; i < [mutArr count]; i++)
    {
        NSLog(@"mutArr[%d]==%f", i, [mutArr[i] doubleValue]);
    }
    return [NSNumber numberWithDouble:1.0];
     */
}

@end
