
#Phase 1
def largest_contiguous_sum_p1(array)
  sub_arrays = []

  array.each_index do |i1|
    array.each_index do |i2|
      if i1 <= i2
        sub_arrays << array[i1..i2]
      end
    end
  end

  sub_arrays.map { |array| array.reduce(:+) }.max
end

def largest_contiguous_sum_p2(array)
  biggest = array[0]
  current_sum = 0

  array.each do |ele|
    current_sum = ele + current_sum

    if current_sum  > biggest
      biggest = current_sum
    end

  current_sum = 0 if current_sum < 0

  end

  biggest
end

if $PROGRAM_NAME == __FILE__
  list = [5, 3, -7]
  # list = [2, 3, -6, 7, -6, 7]
  # list = [-5, -1, -3]
  p largest_contiguous_sum_p1(list) # => 8
  p largest_contiguous_sum_p2(list)
end
