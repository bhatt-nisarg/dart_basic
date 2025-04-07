// program Linear diophantine equation

// Find the GCD of two numbers
int gcd(int a,int b){
  return (a%b == 0) ? b.abs() : gcd(b, a%b);
}
// this function check if integral solution are possible

bool IsPossible(int a,int b,int c){
  return (c % gcd(a,b) == 0);
}
// driver code 
int main(){
  int  a=3,b=6,c=9;
  if(IsPossible(a, b, c) == true){
    print("possible");
  }else{
    print("Not possible");
  }
  int x = 3,y=6,z= 8;
  if(IsPossible(x, y, z) == true){
    print("possible");
  }else{
    print("Not possible");
  }
  return 0;
}