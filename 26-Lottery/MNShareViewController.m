//
//  MNShareViewController.m
//  26-Lottery
//
//  Created by Mac on 14-10-11.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "MNShareViewController.h"
#import "ItemGroup.h"
#import "CellRowModelItem.h"
#import <MessageUI/MessageUI.h>

@interface MNShareViewController ()<MFMessageComposeViewControllerDelegate,MFMailComposeViewControllerDelegate>

@end

@implementation MNShareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setData];
}

-(void)setData{


    CellRowModelItem *sina = [CellRowModelItem cellRowModelItemWithIcon:@"WeiboSina" title:@"新浪微博" destVC:nil];

   
    CellRowModelItem *message = [CellRowModelItem cellRowModelItemWithIcon:@"SmsShare" title:@"短信分享" destVC:nil];
    
    
    __unsafe_unretained typeof(self) blockVc = self;
    message.option = ^{
        
        if(![MFMessageComposeViewController canSendText])  return;
        
        MFMessageComposeViewController *messageVC = [[MFMessageComposeViewController alloc] init];
        
        messageVC.body = @"Hello,Word!";
        
        messageVC.recipients = @[@"10086"];
        
        messageVC.messageComposeDelegate =blockVc;
        
        [blockVc presentViewController:messageVC animated:YES completion:nil];
    
    };
    
    CellRowModelItem *email = [CellRowModelItem cellRowModelItemWithIcon:@"MailShare" title:@"邮件分享" destVC:nil];
    email.option = ^{
    
    
        // 不能发邮件
        //        if (![MFMailComposeViewController canSendMail]) return;
        
        MFMailComposeViewController *vc = [[MFMailComposeViewController alloc] init];
        
        // 设置邮件主题
        [vc setSubject:@"会议"];
        // 设置邮件内容
        [vc setMessageBody:@"今天下午开会吧" isHTML:NO];
        // 设置收件人列表
        [vc setToRecipients:@[@"643055866@qq.com"]];
        // 设置抄送人列表
        [vc setCcRecipients:@[@"1234@qq.com"]];
        // 设置密送人列表
        [vc setBccRecipients:@[@"56789@qq.com"]];
        
        // 添加附件（一张图片）
        UIImage *image = [UIImage imageNamed:@"lufy.png"];
        NSData *data = UIImagePNGRepresentation(image);
        [vc addAttachmentData:data mimeType:@"image/png" fileName:@"lufy.png"];
        
        // 设置代理
        vc.mailComposeDelegate = blockVc;
        // 显示控制器
        [blockVc presentViewController:vc animated:YES completion:nil];

    
};

  
    ItemGroup *group = [ItemGroup itemGroupWithHeader:nil footer:nil cellModelItems:@[sina,message,email]];

    [self.mutableArray addObject:group];

}



-(void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result{

    [controller dismissViewControllerAnimated:YES completion:nil];
    
    if (result == MessageComposeResultCancelled) {
        NSLog(@"发送取消！");
    }else if (result == MessageComposeResultSent){
        NSLog(@"已经发出");
    } else {
        NSLog(@"发送失败");
    }

}
-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{

     [controller dismissViewControllerAnimated:YES completion:nil];
   
    if (result == MessageComposeResultCancelled) {
        NSLog(@"发送取消！");
    }else if (result == MessageComposeResultSent){
        NSLog(@"已经发出");
    } else {
        NSLog(@"发送失败");
    }

}


@end
