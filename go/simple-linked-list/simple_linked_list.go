package linkedlist

import (
	"errors"
)

type List struct {
	head *Node
	size int
}

type Node struct {
	data int
	next *Node
}

func New(elements []int) *List {
	list := &List{}
	for _, e := range elements {
		list.Push(e)
	}
	return list
}

func (l *List) Size() int {
	return l.size
}

func (l *List) Push(element int) {
	l.head = &Node{element, l.head}
	l.size++
}

func (l *List) Pop() (int, error) {
	node := l.head
	if node == nil {
		return 0, errors.New("empty list")
	}
	l.head = node.next
	l.size--
	return node.data, nil
}

func (l *List) Array() []int {
	size := l.Size()
	arr := make([]int, size)

	for i := size - 1; i >= 0; i-- {
		data, _ := l.Pop()
		arr[i] = data
	}

	return arr
}

func (l *List) Reverse() *List {
	rev := List{}
	data, err := l.Pop()
	for err == nil {
		rev.Push(data)
		data, err = l.Pop()
	}
	return &rev
}
