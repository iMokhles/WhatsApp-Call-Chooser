#import <UIKit/UIKit.h>

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
	WABlockBasedAlertView *alertView = [%c(WABlockBasedAlertView) alertViewWithTitle:@"WhatsApp Call Chooser" message:@"Which service you want to use ?"];
	[alertView addButtonWithTitle:@"WhatsApp Call" handler:^{
		[[%c(CallManager) sharedManager] attemptOutgoingVoiceCallWithJID:self.jid alwaysUseVOIP:NO];
	}];

	[alertView addButtonWithTitle:@"Cellular Call" handler:^{
		[[%c(CallManager) sharedManager] attemptOutgoingCellularVoiceCallWithPhoneURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel:%@", [self.jid formattedPhoneNumberFromJID]]]];
	}];

	[alertView addCancelButtonWithTitle:@"Cancel" handler:^{
		
	}];

	[alertView show];

}

%end