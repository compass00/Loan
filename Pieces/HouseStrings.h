//
//  HouseValue.h
//  Loan
//
//  Created by JiaLi on 16/8/24.
//  Copyright © 2016年 JiaLi. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger, HOUSEVALUETYPE) {
    HOUSEVALUETYPE_AREA,
    HOUSEVALUETYPE_TRASACTION_PRICE,
    HOUSEVALUETYPE_NET_PRICE,
    HOUSEVALUETYPE_HOME_VALUE,
    HOUSEVALUETYPE_ORIGINAL_VALUE,
    HOUSEVALUETYPE_FIRST,
    HOUSEVALUETYPE_DEED_TAX,
    HOUSEVALUETYPE_FIVEYEARS_ONLYONE,
    HOUSEVALUETYPE_PERSONAL_TAX,
    HOUSEVALUETYPE_TWOYEARS,
    HOUSEVALUETYPE_SALE_TAX,
    HOUSEVALUETYPE_AGENCY,
    HOUSEVALUETYPE_FEESFORASSIGNMENT,
    HOUSEVALUETYPE_RATIO_OF_LOAN,
    HOUSEVALUETYPE_DOWN_PAYMENT,
    HOUSEVALUETYPE_TOTAL_PRICE,
};

@interface HouseStrings : NSObject

+ (NSString*)getTitle:(HOUSEVALUETYPE)type;

+ (NSString*)getInformation:(HOUSEVALUETYPE)type;

+ (BOOL)getShowSegment:(HOUSEVALUETYPE)type;

+ (BOOL)getShowTaxFiled:(HOUSEVALUETYPE)type;

+ (BOOL)getEnableFiled:(HOUSEVALUETYPE)type;

@end
