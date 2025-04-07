/**
 * Given two numbers a and b task is to find GCD of two numbers : 
 * GCD : Greatest Commmon Divisor and  also known as 
 * HCF : Highest Common Factor
 * is the largest number that divides both of them
 * 
 * for example : 36 = 2 * 2 * 3 * 3
 *              60 = 2 * 2 * 3 * 5
 * GCD is 2 * 2 * 3
 *      means 12 
 * inshort GCD = Multiplication of Common Factors
 * Greatest common divisor a number which is common and which is the greatest common divisor in both
 */


//Native approach : the basiic ideas is to find the minimum of the two numbers and find its highest factor which is also a factor of the other number
/**
 * Time complexity : O(min(a,b))  // because we have iteration based on minimum number of given numbers
 * AuxilarySpace : O(1) // we used only one variable which store integer
 */
int findGcd(int a,int b){
    // first we have to find minimum of two numbers
    int minummNumbers = a > b ? b : a;
    while(minummNumbers > 0){
        // here we have to check that our current minimumNumbers is divisor of given two numbers then break and this is our result
        if(a % minummNumbers == 0 && b % minummNumbers == 0){
            break;
        }
        // otherwise decrease number for next iteration
        minummNumbers--;
    }
    return minummNumbers;
}

/**
 * GCD using Euclidean algorithm for GCD of two numbers
 * The idea of this algorithm is, 
 the GCD of two numbers doesn't change if the smaller number is subtracted from the bigged number.
 * this is Euclidean algorithm by subtraction. it is a process of repeat subtraction. the resutl forward each time until the result is equal to any one number being subtracted.
 * Pseudo code
 * gcd(a,b):
 *  if a=b : 
 *      return a;
 *  if a>b:
 *      return gcd(a-b,b)
 *  else : 
 *      return gcd(a,b-a)
 * 
 Time Complexity : O(min(a,b))
 Auxilaryspace : O(min(a,b)) because it uses internal stack data structure in recursion
 */
int gcdUsingEuclideanMethod(int a,int b){
    // everything can be divide by 0
    if(a==0)
        return b;
    if(b==0)
        return a;
    // base case if 
    if(a==b)
        return a;
    
    //if a > b
    if(a>b)
        return gcdUsingEuclideanMethod(a-b, b);
    return gcdUsingEuclideanMethod(a, b-a);    

}

/*** 
 * optimization by checking divisibility
 * The above method can be optimized based on the following idea
 * if we notice the previours approach we can see at some point one number becomes a factor of the other
 * so instead of repeatedly subtracting till both become equal we can checck it is a factor of other.
 * 
 * description: 
 *  a = 98, b = 56
 *  a > b so put a=  a-b and b remains same : so a = 42 and b = 56
 *  a = 42 and b = 56
 *  since b>a we check b%a = 0 since answer no we proceed further.
 *  now b> a so b = b-a and a remains same. so b = 56-42 = 14 & a = 42
 *  a = 42 and b = 14
 *  since a>b, we check if a%b =0.now the answer is yes.
 *  so we print smaller among a and b as HCF. i.e. 42 is 3 times of 42
 * so HCF is 14
 * 
 TimeComplexity: O(min(a,b))
 Auxiliary Space: O(1) 
 */
int optimizeEuclideanByCheckDivible(int a ,int b){
    if(a==0)
        return b;
    if(b==0)
        return a;
    // Base case
    if(a==b)
        return a;

    if(a>b){
        if(a%b == 0)
            return b;
        return optimizeEuclideanByCheckDivible(a-b,b);
    }
    if(b%a == 0)
        return a;
    return optimizeEuclideanByCheckDivible(a,b-a);                
}

// optimization using division
/**
 * Optimization using division : instead of the euclidean algorithm by subtraction a better approach can be used. we don't perform subtraction here we continuously divide the ibgger number by the smaller number.
 * More can be learned about this eddicient solution by using the modulo operator in Euclidean algorithm
 Time Complexity : O(log(min(a,b)))
   - the derivation for this is obtained from the analysis of the worst-case scenario
   - What we do is we ask what are the 2 least numbers that take 1 step those would be (1,1). if we want to increase the number of steps to 2
     while keeping the numbers as low as possible as we can take the numbers to be (1,2). similarly for for step 3 steps, the numbers would be (2,3), 4 would be (3,5), 5 would be (5,8)
   - so we can notice a pattern here, for the nth step the numbers would be (fib(n),fib(n+1)). so the worst case time complexity is O(n)
     where a ? fib(n) and b? fib(n+1).
   - Now Fibonacci series is an exponentially growing series where the ratio of nth/(n-1)th term approaches 
     (sqrt(5)+1)/2 which is also called the golden ratio. so we can see that the time complexity of the algorithm increases linearly as the terms grow exponentially hence the time complexity
     would be log(min(a,b))
Auxilary space : O(log(min(a,b)))
 **/
int euclideanByDivison(int a,int b){
    return b==0 ? a : euclideanByDivison(b,a%b);
}

/// iterative approach :
/**
 * Iterative implementation for gcd of two numbers using euclidean algorithm 
 */
int gcd(int a,int b){
    while(a>0 && b> 0){
        if(a>b){
            a = a % b;
        }else{
            b = b % a;
        }
    }
    if(a == 0){
        return b;
    }
    return a;

}
void main(){
    print("GCD of 98 and 56  : ${findGcd(98,56)}");
    print("GCD of 98 and 56 euclidean method : ${gcdUsingEuclideanMethod(98,56)}");
    print("GCD of 98 and  optimized euclidean method : ${optimizeEuclideanByCheckDivible(98,56)}");
 print("GCD of 98 and  optimized euclideanByDivison : ${euclideanByDivison(98,56)}");
 print("GCD of 98 and  optimized Iterative method : ${gcd(98,56)}");
}