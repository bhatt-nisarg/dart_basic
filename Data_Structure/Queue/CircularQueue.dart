//Circular Queue, Circular buffer,cyclic buffed or ring buffer
// it uses fifo logic

//Modulo makes sure the index wraps to 0 after reaching the end.

//Prevents overflow.

//Maintains circular behavior in a fixed-size buffer.
const int MAX_SIZE = 10;

class CircularQueue<T> {
	// initialize start and end to -1 because at start we have blank queue
	int start = -1, end = -1;
	List<T?> queue = List.filled(MAX_SIZE,null);

	// insert elements into the queue
	void enque(T element){
		print("in enque elements : ${element}");
		if(start == -1){
			print("inside if start = -1");

			// if this condition satisfied means it is my first element
			start = 0;
			end = 0;
			queue[0] = element;
			print("after adding queue element at 0 : ${queue.toString()}");
			return;
		}
		if(end == MAX_SIZE -1 && start == 0){
			print("inside condition maxSIze-1 && start = 0 : ${MAX_SIZE} && ${start}");
			// in this we have queue is full fill with maxSize
			// that means queue is full and our start is pointing to 0
			print("The queue is full!!!");
			return;
		}
		if(end == start -1){
			print("inside condition end = start -1 : where start : ${start} and end: ${end}");
			// means queue is not full but our start-1 pointing to end
			// here we have end = start -1 means 
			print("The queue is full!!!");
			return;
		}
		end++;
		print('end++ : ${end}');
		end %= MAX_SIZE;
		print("end % MAX_SIZE : ${end}");
		queue[end] = element;
		print("queue[end] :: ${queue}");
	}

	T? deque(){
		// if start is -1 means no elements inside queue
		if(start == -1){
			print("inside start = -1");
			print("queue is empty");
			return null;
		}
		// if above condition not satisfied means we have elements in queue
		T? here = queue[start];
		print("here print: ${here}");
		/// if start == end then we have on one element and we have to return it
		if(start == end){
			print("start == end : ${start}");
			start = -1;
			end = -1;
			return here;
		}

		start++;
		print("start++ : ${start}");
		start %= MAX_SIZE;
		print("start % MAX_SIZE : ${start}");
		return here;
	}

	// get the size of the queue
	int size(){
		if(start == -1) return 0;
		if(start < end) return end - start +1;
		return (MAX_SIZE - (start - end));
	}
	// print all elements of the queue
	void printAll(){
		if(start == -1){
			print("The queue is empty !!!");
			return;
		}
		int i=start;
		while(i != end){
			i++;
			i %= MAX_SIZE;
			print("queues : ${queue[i]}");
		}
	}

}


void main(){
	print("Our circular list : ");
	
	print("Scenario circular queue is empty: ");
	CircularQueue<int> queue = CircularQueue<int>();
	//print("initial queueu : ${queue.printAll()}");
	queue.deque();


	print("deque return first item put to CircularQueue");
	CircularQueue<int> myQueue = new CircularQueue<int>();
	myQueue.enque(1);
	print("deque :${myQueue.deque()}");

	print("Circuar queue act as fifo ");
	CircularQueue fifoQueue = new CircularQueue<int>();
	fifoQueue.enque(1);
	fifoQueue.enque(2);
	fifoQueue.enque(3);

	print("first element deque : ${fifoQueue.deque()}");
	print("second element deque : ${fifoQueue.deque()}");
	print("third element deque : ${fifoQueue.deque()}");


	print("/******* scenario : dequeue returns null after removing all items :) ");
	CircularQueue<int> nullQueue = new CircularQueue<int>();
	nullQueue.enque(1);
	nullQueue.enque(2);
	nullQueue.enque(3);
	nullQueue.deque();	
	nullQueue.deque();	
	nullQueue.deque();	
	print("dequeue elements : ${nullQueue.deque()}");
}