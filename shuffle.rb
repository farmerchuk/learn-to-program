def shuffle(array)
  100.times { array.push(array.delete_at(rand array.size - 1)) }
  array
end

puts shuffle ["jason", "chris", "brett", "louise", "ian", "tim", "jill", "damien"]
