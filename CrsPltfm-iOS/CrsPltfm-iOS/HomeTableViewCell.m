//
//  HomeTableViewCell.m
//  CrsPltfm-iOS
//
//  Created by Realank on 2019/5/16.
//  Copyright © 2019 Realank. All rights reserved.
//

#import "HomeTableViewCell.h"
@interface HomeTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *headImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

@end

@implementation HomeTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    _headImageView.layer.cornerRadius = 50;
    _headImageView.layer.masksToBounds = YES;
}

- (void)setImageName:(NSString *)imageName {
    _imageName = imageName;
    _headImageView.image = [UIImage imageNamed:imageName];
}

- (void)setTitle:(NSString *)title {
    _title = title;
    _titleLabel.text = title;
}

- (void)setContent:(NSString *)content {
    _content = content;
    _contentLabel.text = content;
}

@end
