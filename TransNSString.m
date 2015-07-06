//
//  TransNSString.m
//  TransNSString
//
//  Created by iMokhles on 07/8/2014.
//  Copyright (c) 2015 iMokhles. All rights reserved.
//

#import "TransNSString.h"

@implementation NSString (TransNSString)
+ (NSArray *)TRANS_languagesCodes
{
    // Return list of Preferred Localizations.
    /* WITHIN THE BUNDLE */
//    return [[NSBundle mainBundle] preferredLocalizations];
    /* WITHIN THE DEVICE AS I THINK :P */
    return [NSLocale preferredLanguages];
}
+ (NSString *)translateToAR:(NSString *)stringAR
                       toCA:(NSString *)stringCA
                       toCS:(NSString *)stringCS
                       toDA:(NSString *)stringDA
                       toDE:(NSString *)stringDE
                       toEL:(NSString *)stringEL
                       toEN:(NSString *)stringEN
                    toEN_AU:(NSString *)stringEN_AU
                    toEN_GB:(NSString *)stringEN_GB
                       toES:(NSString *)stringES
                    toES_MX:(NSString *)stringES_MX
                       toFI:(NSString *)stringFI
                       toFR:(NSString *)stringFR
                    toFR_CA:(NSString *)stringFR_CA
                       toHE:(NSString *)stringHE
                       toHI:(NSString *)stringHI
                       toHR:(NSString *)stringHR
                       toHU:(NSString *)stringHU
                       toID:(NSString *)stringID
                       toIT:(NSString *)stringIT
                       toJA:(NSString *)stringJA
                       toKO:(NSString *)stringKO
                       toMS:(NSString *)stringMS
                       toNL:(NSString *)stringNL
                       toNO:(NSString *)stringNO
                       toPL:(NSString *)stringPL
                       toPT:(NSString *)stringPT
                    toPT_PT:(NSString *)stringPT_PT
                       toRO:(NSString *)stringRO
                       toRU:(NSString *)stringRU
                       toSK:(NSString *)stringSK
                       toSV:(NSString *)stringSV
                       toTH:(NSString *)stringTH
                       toTR:(NSString *)stringTR
                       toUK:(NSString *)stringUK
                       toVI:(NSString *)stringVI
                    toZH_CN:(NSString *)stringZH_CN
                    toZH_HK:(NSString *)stringZH_HK
                    toZH_TW:(NSString *)stringZH_TW
{
    NSAssert(stringEN, @"You have to set the english language string to make the english default language for non defined languages");
    
    /*     WAS FOR TEST    */
//    for (NSString *testCodes in [NSString TRANS_languagesCodes]) {
//        NSLog(@"Language = %@",testCodes);
//    }
    //    NSLog(@"CURRENT LANGUAGE ---- %@", stringCode);
    
    NSString *stringCode = [[NSString TRANS_languagesCodes] objectAtIndex:0];
    if ([stringCode isEqualToString:@"ar"]) {
        if (stringAR)
            return stringAR;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"ca"]) {
        
        return stringCA;
    } else if ([stringCode isEqualToString:@"cs"]) {
        if (stringCS)
            return stringCS;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"da"]) {
        if (stringDA)
            return stringDA;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"de"]) {
        if (stringDE)
            return stringDE;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"el"]) {
        if (stringEL)
            return stringEL;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"en"]) {
        
        return stringEN;
    } else if ([stringCode isEqualToString:@"en-AU"]) {
        if (stringEN_AU)
            return stringEN_AU;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"en-GB"]) {
        if (stringEN_GB)
            return stringEN_GB;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"es"]) {
        if (stringES)
            return stringES;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"es-MX"]) {
        if (stringES_MX)
            return stringES_MX;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"fi"]) {
        if (stringFI)
            return stringFI;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"fr"]) {
        if (stringFR)
            return stringFR;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"fr-ca"]) {
        if (stringFR_CA)
            return stringFR_CA;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"he"]) {
        if (stringHE)
            return stringHE;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"hi"]) {
        if (stringHI)
            return stringHI;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"hr"]) {
        if (stringHR)
            return stringHR;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"hu"]) {
        if (stringHU)
            return stringHU;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"id"]) {
        if (stringID)
            return stringID;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"it"]) {
        if (stringIT)
            return stringIT;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"ja"]) {
        if (stringJA)
            return stringJA;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"ko"]) {
        if (stringKO)
            return stringKO;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"ms"]) {
        if (stringMS)
            return stringMS;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"nl"]) {
        if (stringNL)
            return stringNL;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"pl"]) {
        if (stringPL)
            return stringPL;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"pt"]) {
        if (stringPT)
            return stringPT;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"pt-pt"]) {
        if (stringPT_PT)
            return stringPT_PT;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"ro"]) {
        if (stringRO)
            return stringRO;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"ru"]) {
        if (stringRU)
            return stringRU;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"sk"]) {
        if (stringSK)
            return stringSK;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"sv"]) {
        if (stringSV)
            return stringSV;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"th"]) {
        if (stringTH)
            return stringTH;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"tr"]) {
        if (stringTR)
            return stringTR;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"uk"]) {
        if (stringUK)
            return stringUK;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"vi"]) {
        if (stringVI)
            return stringVI;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"zh-CN"]) {
        if (stringZH_CN)
            return stringZH_CN;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"zh-HK"]) {
        if (stringZH_HK)
            return stringZH_HK;
        else
            return stringEN;
    } else if ([stringCode isEqualToString:@"zh-TW"]) {
        if (stringZH_TW)
            return stringZH_TW;
        else
            return stringEN;
    } else {
        return stringEN;
    }
}
@end
