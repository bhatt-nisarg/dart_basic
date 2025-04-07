//ReversInteger.dart
/*
*  first we take last digit and we add last digit to our reverse variable and then we use this add
*/
bool checkReverse(int numbercurrent){
	int number = numbercurrent;
	int reverse = 0;
	while(number != 0){
		// get the last digit of number
		int lastNumber = number % 10;
		print("last Numeber = :${lastNumber}");
		//store the last digit in reversevariable
		// here multiply 10 means we want to add number at last
		reverse = reverse * 10 + lastNumber;
		print("reverse : ${reverse}");

		// remove last digit from current number
		number ~/= 10;
		print("number after removing last digit");

	}
	if(reverse == numbercurrent){
		return true;
	}
	return false;
}
void main(){
	print(checkReverse(121));
}