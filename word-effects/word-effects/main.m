//
//  main.m
//  word-effects
//
//  Created by Krzysztof Kopytek on 2016-05-02.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        
        char choice[255];
        
        printf("Welcome to Word Effects.\n");
        
        //255 unit long array of characters
        char inputChars[255];
        
        printf("Input a string: ");
        // limit imput to max 255 characters
        fgets(inputChars, 255, stdin);
        
        //print as a c string
        printf("Your string is %s\n", inputChars);
        
        //convert char array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String: inputChars];
        
        //print NSSString object
        //NSLog(@"Input was: %@", inputString);
        
        do {
        
            printf("\nPlease choose: \n");
            printf("\t1 - Uppercase \n");
            printf("\t2 - Lowercase \n");
            printf("\t3 - Numberize\n");
            printf("\t4 - Canadianize\n");
            printf("\t5 - Respond\n");
            printf("\t6 - De-Space-It\n");
            printf("\t9 - Quit \n");
            
            fgets(choice, 255, stdin);
            
            switch(choice[0]){
                case '1':
                    NSLog(@"%@", [inputString uppercaseString]);
                    break;
                case '2':
                    NSLog(@"%@", [inputString lowercaseString]);
                    break;
                case '3':
                    NSLog(@"%i", inputString.intValue);
                    break;
                case '4':
                    NSLog(@"%@", [inputString stringByAppendingString: @", eh?"]);
                    break;
                case '5':
                    NSLog(@"%@", inputString);
                    break;
                case '6':
                    NSLog(@"%@", inputString);
                    break;
                default:
                    break;
                    
            }
            
       
        }while(choice[0] != '9');
        
        
    }
    return 0;
}
