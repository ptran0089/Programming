# Reimplement the bubble sort outlined in the preceding lecture.
# The bubble_sort method should accept an array of numbers and arrange the elements in increasing order.
# The method should return the array.
# Do not use the built-in Array#sort

def bubble_sort(arr)
  sorted = false  #true
  
  while !sorted
    sorted = true
    arr.each_with_index do |num, i|
      if i < arr.length - 1 && num > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        puts sorted
        puts "-----"
        sorted = false
      end
    end
  end

  arr
end

p bubble_sort([2, 8, 5, 2, 6])      # => [2, 2, 5, 6, 8]
p bubble_sort([10, 8, 7, 1, 2, 3])  # => [1, 2, 3, 7, 8, 10]