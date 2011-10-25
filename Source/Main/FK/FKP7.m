#import "FKP7.h"
#import <objc/runtime.h>

@implementation FKP7

@synthesize _1, _2, _3, _4, _5, _6, _7;

+ (FKP7 *)p7With_1:(id)_1 _2:(id)_2 _3:(id)_3 _4:(id)_4 _5:(id)_5 _6:(id)_6 _7:(id)_7 {
    return [[FKP7 alloc] initWith_1:_1 _2:_2 _3:_3 _4:_4 _5:_5 _6:_6 _7:_7];
}


#pragma mark Private methods.
- (id)initWith_1:(id)new_1 _2:(id)new_2 _3:(id)new_3 _4:(id)new_4 _5:(id)new_5 _6:(id)new_6 _7:(id)new_7 {
    if (self = [super init]) {
        _1 = new_1;
        _2 = new_2;
        _3 = new_3;
        _4 = new_4;
        _5 = new_5;
        _6 = new_6;
        _7 = new_7;
    }
    return self;
}

- (NSString *)description {
	return [NSString stringWithFormat:@"<%s: _1=%@ _2=%@ _3=%@ _4=%@ _5=%@ _6=%@ _7=%@>", class_getName([self class]), _1, _2, _3, _4, _5, _6, _7];
}

#pragma mark NSObject methods.
- (BOOL)isEqual:(id)object {
    if (object == nil || ![[object class] isEqual:[self class]]) {
        return NO;
    } else {
        FKP7 *other = (FKP7 *)object;
		return [_1 isEqual:other._1] && [_2 isEqual:other._2] && [_3 isEqual:other._3] && [_4 isEqual:other._4] && [_5 isEqual:other._5] && [_6 isEqual:other._6] && [_7 isEqual:other._7];
    }
}

- (NSUInteger)hash {
    return [_1 hash] + [_2 hash] + [_3 hash] + [_4 hash] + [_5 hash] + [_6 hash] + [_7 hash];
}

#pragma mark NSCopying
- (id)copyWithZone:(NSZone *)zone {
	return self;
}
@end
