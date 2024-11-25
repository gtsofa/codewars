class DoublyLinkedList:
	def _init_(self):
		self.head = None
		self.tail = None

	def setHead(self, node):
		if self.head is None:
			self.head = node
			self.tail = node 
			return 
		self.insertBefore(self.head, node)

	def setTail(self, node):
		if self.tail is None:
			self.setHead(node)
			return
		self.insertAfter(self.tail, node)

	def insertBefore(self, node, nodeToInsert):
		# check if linkedlist has 1 node i.e nothing to insert
		if nodeToInsert == self.head and nodeToInsert == self.tail
		return
		# remove node if it's in the linkedlist
		self.remove(nodeToInsert)
		# updates the nodes bindings
		nodeToInsert.prev = node.prev
		nodeToInsert.next = node
		# updates bindings of the sorounding nodes
		if node.prev is None:
			# we are inserting b4 head so update the head
			self.head = nodeToInsert
		# otherwise if we don't have a prev value in prev node
		else:
			node.prev.next = nodeToInsert

		node.prev = nodeToInsert

	def insertAfter(self, node, nodeToInsert):
		# check if linkedlist has 1 node i.e nothing to insert
		if nodeToInsert == self.head and nodeToInsert == self.tail
		return
		# remove node if it's in the linkedlist
		self.remove(nodeToInsert)
		nodeToInsert.prev = node
		nodeToInsert.next = node.next 
		# if we are dealing with the tail, overide the tail with nodetoinsert
		if node.next is None:
			self.tail = nodeToInsert

		else:
			# next node's tail should be nodetoinsert
			nodex.next.prev = nodeToInsert
		node.next = nodeToInsert
				
	def insertAtPosition(self, position, nodeToInsert):
		if position == 1:
			self.setHead(nodeToInsert)
			return
		# start traversing the nodes.
		node = self.head
		currentPosition = 1
		while node is not None and currentPosition != position:
			node = node.next
			currentPosition += 1
		# we are not at the end of the node
		if node is not None:
			self.insertBefore(node, nodeToInsert)
		# we are at the tail
		self.setTail(nodeToInsert)

	def removeNodesWithValue(self, value):
		# search for the given nodes; and then remove it
		# use remove() and containsNodewithValues() methods.
		node = self.head
		# so long as node is not none i.e we are not at end of linkedlist
		while node is not None:
			nodeToRemove = node
			node = node.next
			if nodeToRemove.value == value:
				self.remove(nodeToRemove)



	def remove(self, node):
		# check if we are dealing with head/tail of the linkedlist
		if (node = self.head):
			self.head = self.head.next
		if (node = self.tail):
			self.tail = self.tail.prev
		# eg N <----1----> N

		self.removeNodeBindings(node)

	def containsNodeWithValue(self, value):
		node = self.head
		while node is not None and node.value != value:
		node = node.next
		return node is not None

	def removeNodeBindings(self, node):
		# update pointers of the soroundings
		if node.prev is not None:
			node.prev.next = node.next
		if node.next is not None:
			node.next.prev = node.prev
		node.prev = None
		node.next = None

	




