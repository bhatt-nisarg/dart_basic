// kynea numbers 
// formula foro kynea numbers : ((2^n + 1)^2) - 2
int nTHKyneaNumber(int n){

  // firstly calculate 2^n + 1
  n = (1 << n) + 1;
  print("calculation of 2^n+1 : ${n}");
  // now calculate : (2^n + 1)^2
  n = n * n;
  print("n square : ${n}");
  // now calculate (2^n + 1)^2- 2
  n = n-2;
  // return nth kynea number
  return n;
}
void main(){
  print("nthNumber 1: ${nTHKyneaNumber(1)}");
  print("n = 4 ${nTHKyneaNumber(4)}");
}