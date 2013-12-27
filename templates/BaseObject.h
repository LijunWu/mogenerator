#import <Foundation/Foundation.h>

@interface BaseObject : NSObject <NSCoding, NSCopying>

- (id)initWithAttributes:(NSDictionary *)attributes;
- (NSDictionary *)dictionaryForSerialization;

+ (NSArray *)objectsFromJSONObjects:(NSArray *)aJSONObjects;
+ (id)objectFromJSONObject:(NSDictionary *)aJSONObject;

@end
