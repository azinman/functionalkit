#import "FKBlocks.h"

@implementation F
+ (Function)compose:(Function)f1 :(Function)f2 {
    return [^(id arg) {
        return f1(f2(arg));
    } copy];
}

+ (Effect)comap:(Effect)e :(Function)f {
    return [^(id arg) {
        e(f(arg));
        return;
    } copy];
}

+ (Function)identity {
    return [^(id arg) {
        return arg;
    } copy];
}

+ (Function)const:(id)arg {
    return [^(id dontcare) {
        return arg;
    } copy];
}
@end

@implementation NSObject (BlockAdditions)
- (Function)compose:(Function)other {
    return [F compose:(id)self :other];
}
- (Function)andThen:(Function)other {
    return [F compose:other :(id)self];
}
@end