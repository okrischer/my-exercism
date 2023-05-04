package binarysearch

func SearchInts(list []int, key int) int {
	low := 0
	high := len(list)

	for low < high {
		mid := (low + high) >> 1
		if list[mid] == key {
			return mid
		}
		if list[mid] < key {
			low = mid + 1
		} else {
			high = mid
		}
	}
	return -1
}
