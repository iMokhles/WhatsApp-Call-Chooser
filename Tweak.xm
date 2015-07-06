#import <UIKit/UIKit.h>
#import "TransNSString.h"

@interface NSString (Additions)
- (id)formattedPhoneNumberFromJID;
@end

@interface ChatViewController
@property(retain, nonatomic) NSString *jid; // @synthesize jid=_jid;
@end

@interface CallManager : NSObject
+ (id)sharedManager;
- (void)attemptOutgoingCellularVoiceCallWithPhoneURL:(id)arg1;
- (void)attemptOutgoingVoiceCallWithJID:(id)arg1 alwaysUseVOIP:(_Bool)arg2;
@end

@interface WABlockBasedAlertView : UIAlertView
+ (id)alertViewWithTitle:(id)arg1 message:(id)arg2;
- (void)show;
- (void)cancelAlertViewWithAnimation:(_Bool)arg1;
- (void)addCancelButtonWithTitle:(id)arg1 handler:(id)arg2;
- (void)addButtonWithTitle:(id)arg1 handler:(id)arg2;
@end

%hook ChatViewController

- (void)callButtonTapped:(id)arg1 {
	// to translate check TransNSString file to know what's your language ID ;)
	NSString *titleString = [NSString translateToAR:@"اختيار مكالمات الواتس اب" toCA:nil toCS:nil toDA:nil toDE:nil toEL:nil toEN:@"WhatsApp Call Chooser" toEN_AU:nil toEN_GB:@"WhatsApp Call Chooser" toES:nil toES_MX:nil toFI:nil toFR:@"WhatsApp Appel Sélecteur" toFR_CA:@"WhatsApp Appel Sélecteur" toHE:nil toHI:nil toHR:nil toHU:nil toID:nil toIT:nil toJA:nil toKO:nil toMS:nil toNL:nil toNO:nil toPL:nil toPT:nil toPT_PT:nil toRO:nil toRU:nil toSK:nil toSV:nil toTH:nil toTR:nil toUK:nil toVI:nil toZH_CN:nil toZH_HK:nil toZH_TW:nil];
	NSString *messageString = [NSString translateToAR:@"أي خدمه تفضل استخدامها" toCA:nil toCS:nil toDA:nil toDE:nil toEL:nil toEN:@"Which service you want to use ?" toEN_AU:nil toEN_GB:@"Which service you want to use ?" toES:nil toES_MX:nil toFI:nil toFR:@"Quel service que vous souhaitez utiliser?" toFR_CA:@"Quel service que vous souhaitez utiliser?" toHE:nil toHI:nil toHR:nil toHU:nil toID:nil toIT:nil toJA:nil toKO:nil toMS:nil toNL:nil toNO:nil toPL:nil toPT:nil toPT_PT:nil toRO:nil toRU:nil toSK:nil toSV:nil toTH:nil toTR:nil toUK:nil toVI:nil toZH_CN:nil toZH_HK:nil toZH_TW:nil];
	NSString *WACallString = [NSString translateToAR:@"مكالمات واتس اب" toCA:nil toCS:nil toDA:nil toDE:nil toEL:nil toEN:@"WhatsApp Call" toEN_AU:nil toEN_GB:@"WhatsApp Call" toES:nil toES_MX:nil toFI:nil toFR:@"WhatsApp Appel" toFR_CA:@"WhatsApp Appel" toHE:nil toHI:nil toHR:nil toHU:nil toID:nil toIT:nil toJA:nil toKO:nil toMS:nil toNL:nil toNO:nil toPL:nil toPT:nil toPT_PT:nil toRO:nil toRU:nil toSK:nil toSV:nil toTH:nil toTR:nil toUK:nil toVI:nil toZH_CN:nil toZH_HK:nil toZH_TW:nil];
	NSString *CelCallString = [NSString translateToAR:@"مكالمات بشبكه الهاتف" toCA:nil toCS:nil toDA:nil toDE:nil toEL:nil toEN:@"Cellular Call" toEN_AU:nil toEN_GB:@"Cellular Call" toES:nil toES_MX:nil toFI:nil toFR:@"Appel cellulaire" toFR_CA:@"Appel cellulaire" toHE:nil toHI:nil toHR:nil toHU:nil toID:nil toIT:nil toJA:nil toKO:nil toMS:nil toNL:nil toNO:nil toPL:nil toPT:nil toPT_PT:nil toRO:nil toRU:nil toSK:nil toSV:nil toTH:nil toTR:nil toUK:nil toVI:nil toZH_CN:nil toZH_HK:nil toZH_TW:nil];
	NSString *cancelString = [NSString translateToAR:@"إلغاء" toCA:nil toCS:nil toDA:nil toDE:nil toEL:nil toEN:@"Cancel" toEN_AU:nil toEN_GB:@"Cancel" toES:nil toES_MX:nil toFI:nil toFR:@"annuler" toFR_CA:@"annuler" toHE:nil toHI:nil toHR:nil toHU:nil toID:nil toIT:nil toJA:nil toKO:nil toMS:nil toNL:nil toNO:nil toPL:nil toPT:nil toPT_PT:nil toRO:nil toRU:nil toSK:nil toSV:nil toTH:nil toTR:nil toUK:nil toVI:nil toZH_CN:nil toZH_HK:nil toZH_TW:nil];
	
	WABlockBasedAlertView *alertView = [%c(WABlockBasedAlertView) alertViewWithTitle:titleString message:messageString];
	[alertView addButtonWithTitle:WACallString handler:^{
		[[%c(CallManager) sharedManager] attemptOutgoingVoiceCallWithJID:self.jid alwaysUseVOIP:NO];
	}];

	[alertView addButtonWithTitle:CelCallString handler:^{
		[[%c(CallManager) sharedManager] attemptOutgoingCellularVoiceCallWithPhoneURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel://%@", [self.jid formattedPhoneNumberFromJID]]]];
	}];

	[alertView addCancelButtonWithTitle:cancelString handler:^{
		
	}];

	[alertView show];

}

%end