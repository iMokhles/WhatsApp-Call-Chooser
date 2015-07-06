//
//  TransNSString.h
//  TransNSString
//
//  Created by imokhles on 07/04/15.
//  Copyright (c) 2015 imokhles. All rights reserved.
//

#import <Foundation/Foundation.h>

/* Most Language Codes
 
 0. English         en
 1. French          fr
 2. German          de
 3. Italian         it
 4. Dutch           nl
 5. Swedish         sv
 6. Spanish         es
 7. Danish          da
 8. Portuguese      pt
 9. Norwegian       nb
 10. Hebrew          he
 11. Japanese        ja
 12. Arabic          ar
 13. Finnish         fi
 14. Greek           el
 15. Icelandic       is
 16. Maltese         mt
 17. Turkish         tr
 18. Croatian        hr
 19. Chinese         zh
 20. Urdu            ur
 21. Hindi           hi
 22. Thai            th
 23. Korean          ko
 24. Lithuanian      lt
 25. Polish          pl
 26. Hungarian       hu
 27. Estonian        et
 28. Latvian         lv
 29. Sami            se
 30. Faroese         fo
 31. Farsi           fa
 32. Russian         ru
 33. Chinese         zh
 34. Dutch           nl
 35. Irish           ga
 36. Albanian        sq
 37. Romanian        ro
 38. Czech           cs
 39. Slovak          sk
 40. Slovenian       sl
 41. Yiddish         yi
 42. Serbian         sr
 43. Macedonian      mk
 44. Bulgarian       bg
 45. Ukrainian       uk
 46. Byelorussian    be
 47. Uzbek           uz
 48. Kazakh          kk
 49. Azerbaijani     az
 50. Azerbaijani     az
 51. Armenian        hy
 52. Georgian        ka
 53. Moldavian       mo
 54. Kirghiz         ky
 55. Tajiki          tg
 56. Turkmen         tk
 57. Mongolian       mn
 58. Mongolian       mn
 59. Pashto          ps
 60. Kurdish         ku
 61. Kashmiri        ks
 62. Sindhi          sd
 63. Tibetan         bo
 64. Nepali          ne
 65. Sanskrit        sa
 66. Marathi         mr
 67. Bengali         bn
 68. Assamese        as
 69. Gujarati        gu
 70. Punjabi         pa
 71. Oriya           or
 72. Malayalam       ml
 73. Kannada         kn
 74. Tamil           ta
 75. Telugu          te
 76. Sinhalese       si
 77. Burmese         my
 78. Khmer           km
 79. Lao             lo
 80. Vietnamese      vi
 81. Indonesian      id
 82. Tagalog         tl
 83. Malay           ms
 84. Malay           ms
 85. Amharic         am
 86. Tigrinya        ti
 87. Oromo           om
 88. Somali          so
 89. Swahili         sw
 90. Kinyarwanda     rw
 91. Rundi           rn
 92. Nyanja
 93. Malagasy        mg
 94. Esperanto       eo
 128. Welsh           cy
 129. Basque          eu
 130. Catalan         ca
 131. Latin           la
 132. Quechua         qu
 133. Guarani         gn
 134. Aymara          ay
 135. Tatar           tt
 136. Uighur          ug
 137. Dzongkha        dz
 138. Javanese        jv
 139. Sundanese       su
 140. Galician        gl
 141. Afrikaans       af
 142. Breton          br
 143. Inuktitut       iu
 144. Scottish        gd
 145. Manx            gv
 146. Irish           ga
 147. Tongan          to
 148. Greek           el
 149. Greenlandic     kl
 150. Azerbaijani     az
 151. Nynorsk         nn
 */

@interface NSString (TransNSString)

/* this methods detect the prefered languages on the app, it's object 0 returns the current device language*/
+ (NSArray *)TRANS_languagesCodes;

/* translate your string into several languages and it will return itself directly to the current device language*/
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
                    toZH_TW:(NSString *)stringZH_TW;
@end
