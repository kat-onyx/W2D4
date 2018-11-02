def sorting_two_sum(array, target)
  sorted = array.sort

  sorted.each do |num|
    if target - num > sorted[-1]
      next
    elsif target - num < sorted[-1]
      sorted.pop
    elsif target - num == sorted[-1]
      return true
    end
  end

  false
end

if __FILE__ == $PROGRAM_NAME
  arr = [-2, -1, 3, 8, 9, 10, 11, 12, 100]

  p sorting_two_sum(arr, 109)

end
