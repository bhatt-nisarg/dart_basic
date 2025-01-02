import 'dart:math';
/// arm strong number 
/// armstrong number means 
/**
 * like we have number 371 then if wwe take one one digi from it then we and we power the particular number like length of number in this
 * case we have length of the number is 3 then we can say that 
 * 3^3 + 7^3 + 0^3 = 27 + 343 + = 371 = our number means we have this number is armstrong number
 */
bool ArmStrongNum(var x){
  print("calculation for the number: ${x} ");
  var number = x;
  var numString = number.toString();
  var strLength = numString.length;
  var sum  =0;
  while(number!=0){
    var r = number % 10;
    print("particular number r which we calculate : ${r}");
    sum = sum + pow(r,strLength).toInt();
    print("sum after calculation : ${sum}");
    number = number ~/ 10;
    print("number print : ${number}");

  }
  return sum == x;
}
void main(){
  for(var x in [0,10,370,371]){
    if(ArmStrongNum(x)){
      print("${x} is Armstrong number");
    }else{
      print("${x} is not Armstrong number");
    }
  }
}