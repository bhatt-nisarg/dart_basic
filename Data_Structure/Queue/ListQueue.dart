// List Queue
const int MAX_SIZE = 10;
class ListQueue<T> {
	int count = 0;
	List<T?> queue = List.filled(MAX_SIZE,null);
	// constructor for init queue
	ListQueue(int maxSize){
		queue = List.filled(maxSize,null);
	}
	/// check if the queue has elements (not empty)
	bool hasElements(){
		if(queue.length == 0){
			return false;
		}else{
			return true;
		}
	}

	// void add an element in queue
	void enque(T element){
		if(count == MAX_SIZE){
			print("The queue is full");
		}else{
			queue[count] = element;
			count++;
		}
	}

	// Takes the next element from queue
	T? deque(){
		// we remove first element from queue
		
		// initialize null
		T? result = null;
		if(count == 0){
			print("The queue is empty !!!");
			throw Exception("Invalid operation");
		}else{
			result = queue[0];
			for(int i=0;i<queue.length-1;i++){
				queue[i] = queue[i+1];
			}
		}
		return result;
	}
}

void main(){
	ListQueue<int> Queue = new ListQueue<int>(6);
	Queue.enque(12);
	Queue.enque(2);
	Queue.enque(7);
	print("Queue : ${Queue.queue}");
	print("Enque");
	var returnData = Queue.deque();
	print("$returnData\n");
	returnData = Queue.deque();
	print("now the queue is : ${Queue.queue}");
}