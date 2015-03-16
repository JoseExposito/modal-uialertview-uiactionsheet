#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

    - (IBAction)showModalAlertView:(id)sender;
    - (IBAction)showModalActionSheet:(id)sender;
    @property (weak, nonatomic) IBOutlet UIBarButtonItem *toolbarItem;

@end
