#import "FKP2.h"
#import <objc/runtime.h>

@implementation FKP2

@synthesize _1, _2;

+ (FKP2 *)p2With_1:(id)_1 _2:(id)_2 {
    return [[FKP2 alloc] initWith_1:_1 _2:_2];
}


#pragma mark Private methods.
- (id)initWith_1:(id)new_1 _2:(id)new_2 {
    if (self = [super init]) {
        _1 = new_1;
        _2 = new_2;
    }
    return self;
}

- (NSString *)description {
	return [NSString stringWithFormat:@"<%s: _1=%@ _2=%@>", class_getName([self class]), _1, _2];
}

#pragma mark NSObject methods.
- (BOOL)isEqual:(id)object {
    if (object == nil || ![[object class] isEqual:[self class]]) {
        return NO;
    } else {
        FKP2 *other = (FKP2 *)object;
		return [_1 isEqual:other._1] && [_2 isEqual:other._2];
    }
}

- (NSUInteger)hash {
    return [_1 hash] + [_2 hash];
}

#pragma mark NSCopying
- (id)copyWithZone:(NSZone *)zone {
	return self;
}
@end
