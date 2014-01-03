#import "BaseObject.h"

@implementation BaseObject

- (instancetype)initWithAttributes:(NSDictionary *)attributes {
    if (self = [self init]) {
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
	if (self = [self init]) {
	}
	return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {}

- (id)copyWithZone:(NSZone *)zone {
	return [[self.class allocWithZone:zone] init];
}

+ (NSArray *)objectsFromJSONObjects:(NSArray *)aJSONObjects
{
    NSObject *instance = nil;
    NSMutableArray *results = [NSMutableArray arrayWithCapacity:[aJSONObjects count]];
    for (NSDictionary *d in aJSONObjects) {
        instance = [[self alloc] initWithAttributes:d];
        [results addObject:instance];
        SAFE_ARC_RELEASE(instance);
    }
    
    return results;
}

+ (instancetype)objectFromJSONObject:(NSDictionary *)aJSONObject {
    return ((aJSONObject) ? SAFE_ARC_AUTORELEASE([[self alloc] initWithAttributes:aJSONObject]) : nil);
}

//- (NSDictionary *)dictionaryForSerialization
//{
//    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
//    
//    unsigned count;
//    objc_property_t *properties = class_copyPropertyList([self class], &count);
//    
//    for (int i = 0; i < count; i++) {
//        NSString *key = [NSString stringWithUTF8String:property_getName(properties[i])];
//        id value = [self valueForKey:key];
//        if (value) {
//            if ([value isKindOfClass:[NSDate class]]) {
//                value = [NSDate stringFromDate:value withCommonFormat:DateFormatterCommonJsonStyle];
//            }
//        }
//        else {
//            value = [NSNull null];
//        }
//        
//        if ([key isEqualToString:@"uid"]) {
//            [dict setObject:value forKey:@"id"];
//        }
//        else {
//            [dict setObject:value forKey:key];
//        }
//        
//    }
//    
//    free(properties);
//    
//    return [NSDictionary dictionaryWithDictionary:dict];
//}


@end
