// Example of linked list stack

// first create node class for store single node
class Node<T> {
	// the data of the Node
	// data is current data
	T? data;
	// next is next data node
	Node<T>? next;
 	
 	// constructor
 	Node(T? data){
 		this.data = data;
 		this.next = null;
 	}
}

/// our linked list stack class 
class LinkedListStack<T> {
	// Top of stack
	Node<T>? head;

	//Size of stack
	int size = 0;

	LinkedListStack(){
		this.head = null;
		this.size = 0;
	}
	
	// Add element at top of the stack
	void push(T element){
		try{
		// first take one new node and set its next node to our head which is exactly next node of it
		Node<T> newNode = new Node<T>(element);
		print("inside new node print : ${newNode}");
		newNode.next = this.head;
		this.head = newNode;
		this.size++;
		}catch(e){
			print("Exception in elemtns  : ${e.toString()}");
			throw Exception("Exception in push element : ${e.toString()}");
		}
	}

	// pop element : remove top most element
	T? pop(){
		try{
			T? returnData = null;
			if(size == 0){
				print("stack is empty");
			}else{
				Node<T>? desroy = this.head;
				// when we have to remove top most element we have to make our head to head of next because 
				// we have to dereference that
				this.head = this.head?.next;
				returnData = desroy?.data;
				this.size--;
			}
			return returnData;
		}catch(e){
			print('Exception in pop element : ${e.toString()}');
			throw Exception("Exception in pop element : ${e.toString()}");
		}
	}

	// peek method to peek top most element which is nothing but our head
	T? get peek {
		if(this.size == 0) {
			return null;
		}
		return head?.data;
	}
	// check empty:
	bool get isEmpty {
		return this.size == 0;
	}

	// get size 
	int getSize(){
		return this.size;
	}
}

void main(){
	LinkedListStack<String> stack = new LinkedListStack<String>();
	var returnResult;
	print("push 2 5 9 7 to the stack \n");
	stack.push("2");
	stack.push("5");
	stack.push("9");
	stack.push("7");

	print("successful push \n");
	returnResult = stack.pop();
	print("pop a data : ${returnResult}\n");
	returnResult = stack.peek;
	print("peek top most element : ${returnResult.toString()}");
	stack.push("10");
	print("push element : ${returnResult}");
	print("after push peek element : ${stack.peek}");
}