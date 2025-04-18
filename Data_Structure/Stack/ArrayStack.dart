//below is the example of array stack
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

}	
void main(){
	print("Example of stack data structure ");
	ArrayStack<String> arrayStack = new ArrayStack<String>(6);

	arrayStack.push("1");
	arrayStack.push("2");
	arrayStack.push("3");
	arrayStack.push("4");
	arrayStack.push("5");


	print("our stack : ${arrayStack.stack} \n peek : ${arrayStack.peek}");
}
