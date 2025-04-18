// code for is balance brackets 
// function for check is brackats is balanced or not
class ArrayStack<T>{

	// array stack 
	List<T?> _stack = [];

	/// [_count] is the number of element in the stack
	int _count = 0;

	/// [_size] of stack
	int _size = 0;

	// init Array Stack
	ArrayStack(int size){
		this._size = size;
		this._stack = List<T?>.filled(_size,null);
		this._count = 0;
	}

	// push a item to the stack of type [T] to the [_stack] 
	// if the size is exceeded the element wont be added
	void push(T item){
		// at the time of push we have to check condition for stack overflow
		/** 
		stack overflow condition means when we have stack and our count size is equal means it is
		**/
		if(_count == _size){
			return null;
		}
		_stack[_count] = item;
		_count++;
	}

	// pop the last element inserted from the [_stack]
	T? pop(){
		/**
		at the time of pop we have to check that we have atleast one elements in our stack
		to pop element
		**/
		if(_count == 0){
			return null;
		}
		T? pop_data = _stack[_count - 1];
		_stack[_count - 1] = null;
		_count--;
		return pop_data;
	}

	// this method return stack
	List<T?> get stack {
		return _stack;
	}

	// one known method called peek it returns top most element of list
	T? get peek{
		try{
			if(_count == null){
				return null;
			}
			return _stack[_count-1];
			}catch(e){
				print('Exception in peek element : ${e.toString()}');
				throw Exception("Exception in peek element");
			}
	}

	bool get isEmpty{
		if(_count == 0){
			return true;
		}
		return false;
	}
	bool get isNotEmpty{
		if(_count != 0){
			return true;
		}else{
			return false;
		}
	}
}	
bool isBalanceBrackets(String requestString){
	try{
		ArrayStack<String> stack = ArrayStack<String>(requestString.length);
		List<String> openingBrackets  = ['{','(','['];
		final Map<String,String> matchingBrackets = {
			'}':'{',
			')':'(',
			']':'['
		};
		for(int i=0;i<requestString.length;i++){
			var currentChar = requestString[i];
			print("current index: ${i} : char :${currentChar}");
			if(openingBrackets.contains(currentChar)){
				print("yes current brackets is opening Brackets ${currentChar}");
				// first we check that current character is any opening brackets or not
				stack.push(currentChar);
			}else{
				if(stack.isNotEmpty){
					if(stack.peek == matchingBrackets[currentChar]){
						print("current char match with stack top : ${stack.peek}");
						stack.pop();
					}else{
						return false;
					}
				}else{
					return false;
				}
			}
		}
		return stack.isEmpty;
	}catch(e){
		print('Exception in isBalanceBrackets : ${e.toString()}');
		throw Exception("Exception in isBalanceBrackets : ${e.toString()}");
	}
}
void main(){
	print(isBalanceBrackets('[(){}()[]][]()[]'));
	print(isBalanceBrackets("([])}{}{}{}{()()()()("));
}