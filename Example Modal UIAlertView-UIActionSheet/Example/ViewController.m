#import "ViewController.h"
#import "UIAlertView+Modal.h"
#import "UIActionSheet+Modal.m"

@implementation ViewController
@synthesize toolbarItem;

- (void)viewDidUnload
{
    [self setToolbarItem:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait) || (interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)showModalAlertView:(id)sender
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Modal alert" message:@"Hello world" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
    
    if ([alertView showModal] == alertView.cancelButtonIndex) {
        NSLog(@"Cancel");
    } else {
        NSLog(@"Ok");
    }
}

- (IBAction)showModalActionSheet:(id)sender
{
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Modal action sheet" delegate:nil cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Destructive" otherButtonTitles:@"Other button", nil];
    
    NSInteger result = [actionSheet showModalFromBarButtonItem:self.toolbarItem animated:YES];
    if (result == actionSheet.cancelButtonIndex) {
        NSLog(@"Cancel");
    } else if (result == actionSheet.destructiveButtonIndex) {
        NSLog(@"Destructive");
    } else {
        NSLog(@"Other");
    }
}

@end
