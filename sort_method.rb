def sort(some_array)
  recursive_sort some_array, []
end

def recursive_sort(unsorted_array, sorted_array)
  unsorted_array_copy = []
  unsorted_array_copy.replace(unsorted_array)
  sorted_array << unsorted_array.delete(min(unsorted_array_copy))
  if unsorted_array.size > 0
    recursive_sort unsorted_array, sorted_array
  end
  sorted_array
end

# def min(array)
#   array[0] < array[1] ? array.delete_at(1) : array.delete_at(0)
#   array.size > 1 ? min(array) : array
# end

def min(array)
  smallest = array[0]
  increment = 1
  min_recursion array, smallest, increment
end

def min_recursion(array, smallest, increment)
  return smallest if array.size == increment
  smallest_downcase = smallest.downcase
  array_value_downcase = array[increment].downcase
  if smallest_downcase < array_value_downcase
    min_recursion(array, smallest, increment += 1)
  else
    new_smallest = array[increment]
    min_recursion(array, new_smallest, increment += 1)
  end
end

puts sort ["jason", "Chris", "brett", "louise"]
