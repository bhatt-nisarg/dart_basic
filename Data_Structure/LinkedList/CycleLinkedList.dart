// cycle linked list in dart
import 'dart:math';
// created node class for store current node value and next node address
class Node{
	int value;
	Node? next = null;
	Node(this.value);

	int get nodeValue {
		return this.value;
	}

	Node? get nextNode {
		return this.next;
	}
}

class LinkedList {
	Node? _headNode;
	Node? _tailNode;

	Node? get head { 
		return this._headNode;
	}
	Node? get tail {
		return this._tailNode;
	}
	void insert(Node? newNode){
		if(head == null){
			this._headNode = newNode;
			this._tailNode = newNode;
		}else{
			this._tailNode?.next = newNode;
			this._tailNode = this._tailNode?.next;
		}
	}
}
Node createNode(int value){
	return Node(value);
}
Node? findCyclicNode(Node? headNode){
	/** 
		we maintain fast and slow pointer 
		The fast pointer jumps 2 nodes at a time
		and the slow pointer jumps one node at a time
		eventually the fast and slow will coincide on a node

		Then we place one of the node back to the head.
		The node where these two nodes coincide again will be the 
		origin of the loop node.
		and move in tandem. check algorith for proof	
	**/
	Node? fastNode = headNode;
	Node? slowNode = headNode;

	while(fastNode != null && fastNode.next != null){
		slowNode = slowNode?.next;
		fastNode = fastNode.next?.next;
		if(slowNode == fastNode){
			break;
		}
	}

	if(slowNode == fastNode){
		slowNode = headNode;
		while(slowNode != fastNode){
			slowNode = slowNode?.next;
			fastNode = fastNode?.next;
		}
		return slowNode;
	}else{
		return null;
	}
}

void main(){
	LinkedList list  =LinkedList();
	List<Node> allNode = <Node>[];

	for(var i =0;i<=10;i++){
		Node newNode = createNode(i);
		list.insert(newNode);
		allNode.add(newNode);
	}
}