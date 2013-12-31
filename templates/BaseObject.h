#import <Foundation/Foundation.h>

@interface BaseObject : NSObject <NSCoding, NSCopying>

- (instancetype)initWithAttributes:(NSDictionary *)attributes;
- (NSDictionary *)dictionaryForSerialization;

+ (NSArray *)objectsFromJSONObjects:(NSArray *)aJSONObjects;
+ (instancetype)objectFromJSONObject:(NSDictionary *)aJSONObject;

@end
