%hook SpringBoard

- (void)_menuButtonDown:(id)arg1
{
  NSLog(@"x=%d,y=%d", 10,20);
  UIAlertController *alertController = ({
        UIAlertController *al = [UIAlertController alertControllerWithTitle:@"hello World" message:nil preferredStyle:UIAlertControllerStyleAlert];
        [al addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:nil]];
        [al addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil]];

        al;
    });

    [self presentViewController:alertController animated:YES completion:nil];
  %orig;
}

%end

