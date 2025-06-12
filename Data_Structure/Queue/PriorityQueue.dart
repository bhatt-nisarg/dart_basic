//Priority Queue
class PriorityQueue<T>{
	// take one list for data store
	List<QueueItem<T>> _dataStore = <QueueItem<T>>[];

	//this getter will return size of our queuex
	int get size => _dataStore.length;

	// check that queue is empty or not 
	bool get isEmpty => _dataStore.isEmpty;

	//enqueue
	enqueue(T item,int priority){
		// here in every operation we give item and its priority to change position of item
		QueueItem<T> queueItem = new QueueItem<T>(item:item,priority:priority);
		// default added is false to and then we check that if that current value less priority then other
		// if yes then insert elements there

		bool added = false;
		for(int i=0;i<_dataStore.length;i++){
			// condition for priority
			// if current list item priority is greater then current entered element priority then we do same for this
			if(priority < _dataStore[i].priority!){
			print("for item at index: $i  : ${queueItem.toString()}");
			added = true;
			_dataStore.insert(i,queueItem);
			break;
		}
		}
		// if added is false then add item at the end
		if(!added){
			_dataStore.add(queueItem);
		}
	}
	T? dequeue(){
		// dequeue element at from 0 priority
		if(_dataStore.isNotEmpty){
			return _dataStore.removeAt(0).item;
		}
		return null;
	}

	// get front
	// get first item
	T? get front{
		if(_dataStore.isNotEmpty){
			return _dataStore.first.item;
		}
		return null;			
	}
	// get end
	// get last element
	T? get end{
		if(_dataStore.isNotEmpty){
			return _dataStore.last.item;
		}
		return null;
	}
	// clear our list
	clear(){
		_dataStore.clear();
	}
	// print method
	String toString(){
		return _dataStore.toString();
	}

}

//specific single item
class QueueItem<T>{
	T? item;
	int? priority;
	//QueueItem({required this.item,required this.priority});
	QueueItem({required this.item,required this.priority});
	String toString(){
		return '$item - $priority';
	}
}
void main(){
	PriorityQueue<int> queue = new PriorityQueue();
	queue.enqueue(1,2);
	queue.enqueue(2,1);
	queue.enqueue(3,3);
	queue.enqueue(4,2);
	print("now our queue is : ${queue.toString()}");
	print(queue.dequeue());
	print(queue.dequeue());
	print(queue.dequeue());
	print(queue.dequeue());
}