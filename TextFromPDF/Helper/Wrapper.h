//
//  Wrapper.h
//  TextFromPDF
//
//  Created by Developer on 2/24/17.
//  Copyright © 2017 SIC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "pdf.h"
@interface Wrapper : NSObject

-(NSString*) convertPDFToText: (NSString *) pathToFile;

@end
