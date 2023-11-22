//
//  GTNormalTableViewCell.h
//  first-coding
//
//  Created by 黄继鹏 on 2023/11/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol GTNormalTableViewCellDelegate <NSObject>

- (void)tableViewCell:(UITableViewCell *)tableViewCell clickDeleteButton:(UIButton *)deleteButton;

@end

@interface GTNormalTableViewCell : UITableViewCell

@property(nonatomic,weak,readwrite) id<GTNormalTableViewCellDelegate> delegate;
- (void)layoutTableViewCell;

@end

NS_ASSUME_NONNULL_END
