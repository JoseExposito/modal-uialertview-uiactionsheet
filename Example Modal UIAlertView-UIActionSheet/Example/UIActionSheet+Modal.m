/*
 Copyright (c) 2012, José Expósito
 
 Permission is hereby granted, free of charge, to any
 person obtaining a copy of this software and associated
 documentation files (the "Software"), to deal in the
 Software without restriction, including without limitation
 the rights to use, copy, modify, merge, publish,
 distribute, sublicense, and/or sell copies of the
 Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice
 shall be included in all copies or substantial portions of
 the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY
 KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
 PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS
 OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
 OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
 OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */
#import "UIActionSheet+Modal.h"

NSInteger returnButtonIndex;

@implementation UIActionSheet(Modal)

- (NSInteger)showModalFromTabBar:(UITabBar *)view
{
    self.delegate = self;
    [self showFromTabBar:view];
    
    CFRunLoopRun();
    return returnButtonIndex;
}

- (NSInteger)showModalFromToolbar:(UIToolbar *)view
{
    self.delegate = self;
    [self showFromToolbar:view];
    
    CFRunLoopRun();
    return returnButtonIndex;
}

- (NSInteger)showModalInView:(UIView *)view
{
    self.delegate = self;
    [self showInView:view];
    
    CFRunLoopRun();
    return returnButtonIndex;
}

- (NSInteger)showModalFromBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated
{
    self.delegate = self;
    [self showFromBarButtonItem:item animated:animated];
    
    CFRunLoopRun();
    return returnButtonIndex;
}

- (NSInteger)showModalFromRect:(CGRect)rect inView:(UIView *)view animated:(BOOL)animated
{
    self.delegate = self;
    [self showFromRect:rect inView:view animated:animated];
    
    CFRunLoopRun();
    return returnButtonIndex;
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    returnButtonIndex = buttonIndex;
    CFRunLoopStop(CFRunLoopGetCurrent());
}

@end
