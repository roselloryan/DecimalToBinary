//
//  main.m
//  DecimalToBinary


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *line = @"10";
        
        
        NSInteger lineInt = [line integerValue];
        
        NSMutableString *solutionString = [[NSMutableString alloc]init];
        
        NSInteger powerOfTwo = 0;
        NSInteger powerOfTwoSum = 1;
        
        //find out how many bits needed
        while (powerOfTwoSum < lineInt) {
            powerOfTwo ++;
            
            NSInteger tempPowTwo = 1;
            NSInteger i = 0;
            for (i = 0; i < powerOfTwo; i++) {
                tempPowTwo *= 2;
            }
            powerOfTwoSum += tempPowTwo;
        }
        

        
        // build bit number
        NSInteger numberOfBitDigits = powerOfTwo + 1;
        NSInteger j = 0;
        for (j = numberOfBitDigits; j > 0; j--) {
            
            NSInteger tempPowTwo = 1;
            NSInteger i = 0;
            for (i = 0; i < powerOfTwo; i++) {
                tempPowTwo *= 2;
            }
            powerOfTwo --;
            
            
            if (lineInt >= tempPowTwo) {
                [solutionString appendString:@"1"];
                lineInt -= tempPowTwo;
            }
            else {
                [solutionString appendString:@"0"];
            }
        }

        NSLog(@"solutionString: %@", solutionString);
        
    }
    return 0;
}
