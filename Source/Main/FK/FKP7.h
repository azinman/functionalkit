#import <Foundation/Foundation.h>
#import "FKMacros.h"

#define p7(a, b, c, d, e, f, g)    pair7(a, b, c, d, e, f, g)
#define pair7(a, b, c, d, e, f, g) [FKP7 p7With_1:a _2:b _3:c _4:d _5:e _6:f _7:g]

@interface FKP7 : NSObject <NSCopying> {
    id __unsafe_unretained _1;
    id __unsafe_unretained _2;
    id __unsafe_unretained _3;
    id __unsafe_unretained _4;
    id __unsafe_unretained _5;
    id __unsafe_unretained _6;
    id __unsafe_unretained _7;
}

READ id _1;
READ id _2;
READ id _3;
READ id _4;
READ id _5;
READ id _6;
READ id _7;

+ (FKP7 *)p7With_1:(id)_1 _2:(id)_2 _3:(id)_3 _4:(id)_4 _5:(id)_5 _6:(id)_6 _7:(id)_7;
- (id)initWith_1:(id)new_1 _2:(id)new_2 _3:(id)new_3 _4:(id)new_4 _5:(id)new_5 _6:(id)new_6 _7:(id)new_7;
@end
