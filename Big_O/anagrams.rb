def first_anagram?(first, second)
  first_array = first.chars
  first_array.permutation.map(&:join).include?(second)
end

def second_anagram?(first, second)
  first_array = first.chars
  second_array = second.chars

  first_array.each do |char|
    i = second_array.find_index(char)
    second_array.delete_at(i) if i
  end

  second_array.empty?
end

def third_anagram?(first, second)
  first.sort == second.sort
end

def forth_anagram?(first, second)
  first_hash = Hash.new(0)
  second_hash = Hash.new(0)

  first.each_char do |ele|
    first_hash[ele] += 1
  end

  second.each_char do |ele|
    second_hash[ele] += 1
  end

  first_hash == second_hash
end

def one_hash_anagram?(first, second)
  
end

if $PROGRAM_NAME == __FILE__
  p first_anagram?("gizmo", "sally")    #=> false
  p first_anagram?("elvis", "lives")    #=> true
  p second_anagram?("gizmo", "sally")    #=> false
  p second_anagram?("elvis", "lives")    #=> true
  p forth_anagram?("gizmo", "sally")    #=> false
  p forth_anagram?("elvis", "lives")    #=> true
end
