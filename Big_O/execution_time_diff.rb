def my_min_p1(array)
  # smallest = array[0]

  # array.each do |ele1|
  #   array.each do |ele2|
  #     if ele1 < ele2 && ele1 < smallest
  #       smallest = ele1
  #     elsif ele2 < ele1 && ele2 < smallest
  #       smallest = ele2
  #     end
  #   end
  # end

  # smallest

  array.each do |ele1|
    return ele1 if array.all? {|ele2| ele1 <= ele2}
  end

end

def my_min_p2(array)
#   smallest = array[0]
#
#   array.each do |ele|
#     smallest = ele if ele < smallest
#   end
#
#   smallest

  array.reduce do |smallest, ele|
    ele < smallest ? ele : smallest
  end
end



if __FILE__ == $PROGRAM_NAME
  # arr = [0, 3, 5, 4, -5, 10, 1, 90]
  # p my_min_p1(arr)
  # p my_min_p2(arr)
end
