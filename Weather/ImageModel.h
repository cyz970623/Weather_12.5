//
//  ImageModel.h
//  Weather
//
//  Created by 徐艺文 on 9/8/21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImageModel : NSObject

+(ImageModel*)sharedInstance;

-(UIImage*)getImageWithName:(NSString*)name;
-(UIImage*)getImageWithIndex:(NSInteger)index;
-(NSInteger)numberOfImages;
-(NSString*)getImageNameForIndex:(NSInteger)index;

@end

NS_ASSUME_NONNULL_END
