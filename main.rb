def mergesort(arr)
	if arr.length < 2
		return arr
	else
		left_side = arr.take(arr.length/2)
		right_side = arr.drop(arr.length/2)
		left_sort = mergesort(left_side)
		right_sort = mergesort(right_side)
		
		sorted_array = []
		until left_sort.empty? || right_sort.empty?
			if left_sort[0] <= right_sort[0]
			sorted_array << left_sort.shift
			else
			sorted_array << right_sort.shift
			end
		end
		sorted_array + left_sort + right_sort
	end
end

arr = [1, 5, 7, 2, 11, 9, 8]
p mergesort(arr)
