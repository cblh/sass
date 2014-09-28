def sum ary
  return 0 if ary.empty?

  sum = 0
  ary.each do |arg|
    sum = sum + arg.to_i
  end
  sum
end

def max_2_sum ary
  return 0 if ary.empty?
  return ary[0] if ary.length == 1
  return sum ary.sort.last 2
end

def sum_to_n? ary, n
  return true if n == 0
  return ary[0].to_i if ary.length == 1
  ary.each do |arg1|
    ary.each do |arg2|
      return true if n == arg1 + arg2
    end
  end
  return false
end

puts sum ["a", 2, 2, 3]

puts max_2_sum([1, 9, 2]) == 11
puts max_2_sum([]) == 0
puts max_2_sum([1]) == 1

puts sum_to_n?([3], 1)