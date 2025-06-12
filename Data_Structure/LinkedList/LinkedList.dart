// LinkedList demo 
//model for linked list

/**
the iterable and iterator classes support sequential access to a collection of values.
TO practice using these collections.follow the iterable collections tutorial.
if you create a class that can provide iterators for use in for loops, extend(if possible) or implement iterable.
implement iterator to define the actual iteration ability.
*/
class Node<T>{
	// next node
	Node<T?>? next;
	// current value
	T? value;
	Node(this.value);
	Node.before(this.next,this.value);
}
// LinkedList iterator : we can't extends because iterator is interface
class LinkedListIterator<T> implements Iterator<T?>{
	Node<T?>? _current;

	@override
	bool moveNext() => _current != null;

	@override
	T? get current {
		T? currentValue = this._current?.value;

		this._current = this._current?.next;

		return currentValue;
	}
	LinkedListIterator(this._current);
}
// linked list class 
class LinkedList<T> extends Iterable<T?>{
	// first define length 
	int _length = 0;
	int get length => this._length;

	Node<T?>? _head;

	@override
	Iterator<T?> get iterator => new LinkedListIterator<T>(this._head);

	void remove(T? item){
		// simple if remove item is head then simple remove head and move to next
		if(this._head?.value == item){
			this._head = this._head?.next;
			this._length--;
		}
		//other then we have to check for it 
		// find item which we have to remove and then remove from that specific position
		if(this._head != null){
			Node<T?>? current = this._head;
			while(current?.next != null){
				if(current?.next?.value == item){
					current?.next = current.next?.next;
					this._length--;
				}
				current = current?.next;
			}
		}
	}

	// pop simply remove head
	T? pop(){
		if(this._head != null){
			T? value = this._head?.value;
			this._head = this._head?.next;
			this._length--;
			// returned popped value
			return value;
		}
	}
	// push item to linked list : 
	void add(T? item){
		if(this._head == null){
			// head null means it is empty list
			this._head = new Node(item);
		}else{
			Node<T?>? current = this._head;
			while(current?.next !=null){
				current = current?.next;
			}
			current?.next = Node(item);
		}
		//increment length of list
		this._length++;
	}	
	


	//@override
	//String toString(){
	//	return '';
	//}
}



void main(){
	print("Linked List Demo : ");
	LinkedList<int> linkedList = new LinkedList();
	linkedList.add(1);
	linkedList.add(2);
	linkedList.add(3);
	linkedList.remove(2);
	//print(linkedList.pop());
	print(linkedList.toString());
}