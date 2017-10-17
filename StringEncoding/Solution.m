//
//  Solution.m
//  StringEncoding
//
//  Created by Serhii Butenko on 10/17/17.
//  Copyright © 2017 Serhii Butenko. All rights reserved.
//

#import "Solution.h"

@implementation Solution

+ (NSString *)encodeString:(NSString *)str
{
    
    NSMutableString *resultString = [[NSMutableString alloc] init];
    
    for (int i = 0; i < str.length; i++)
    {
        if ([str characterAtIndex:i] >='a' && [str characterAtIndex:i] <= 'z')
        {
            char position = [str characterAtIndex:i] - 'a';
            [resultString appendString:[NSString stringWithFormat:@"%c",'z' - position]];
        }
        else if([str characterAtIndex:i] >= 'A' && [str characterAtIndex:i] <= 'Z')
        {
            char position = [str characterAtIndex:i] - 'A';
            [resultString appendString:[NSString stringWithFormat:@"%c",'Z' - position]];
        }
        else
        {
            [resultString appendString:[NSString stringWithFormat:@"%c",[str characterAtIndex:i]]];
        }

    }
    
    return resultString;
}

@end
