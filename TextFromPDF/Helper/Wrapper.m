//
//  Wrapper.m
//  TextFromPDF
//
//  Created by Developer on 2/24/17.
//  Copyright © 2017 SIC. All rights reserved.
//

#import "Wrapper.h"

@implementation Wrapper

-(NSString*) convertPDFToText: (NSString *) pathToFile
{
    return convertPDF(pathToFile);
}

@end
