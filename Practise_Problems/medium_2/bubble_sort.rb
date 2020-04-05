def bubble_sort!(arr)
	
	track_arr = arr
	index = 0

	loop do 
		break if track_arr == arr.sort!

		if arr[index] > arr[(index + 1)]
			arr[index] = track_arr[(index + 1)]
			arr[(index + 1)] = track_arr[index]
			track_arr = arr
			index += 1
		elsif arr[index] == arr[(index + 1)] || arr[index] < arr[(index + 1)]
			index += 1
		end
	end
	arr
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)