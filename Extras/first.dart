
void main(){
  print("this workspace for pure dart basic");
  for(int i in [0,1,2,3,4,5,6]){
    print("current index : ${i}");
  }
  testFunction();
}
bool testFunction(){
  try {
    print("inside test function ");
    return true;
  } catch (e) {
    print("Printing testFunction : ${e.toString()}");
    throw Exception("Exception in tesFunction: ${e.toString()}");
  }
}