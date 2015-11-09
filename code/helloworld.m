#import <Foundation/Foundation.h>
/*

	编译:
		clang test.m -o test -framework Foundation

*/
@interface SampleClass:NSObject 
	- (void)sampleMethod;
@end

@implementation SampleClass
	- (void)sampleMethod{
		NSLog(@"hi, 世界。\n");
	}
@end

int main(){
	SampleClass *sampleClassCopy = [[SampleClass alloc] init];
	[sampleClassCopy sampleMethod];
	return 0;
}