def hello name
  "Hello, #{name}"
end

def starts_with_consonant? s
  if /\A[aeiouAEIOU]/.match s
    false
  elsif /\A[a-zA-Z]/.match s
    true
  else
    false
  end
end

def binary_multiple_of_4? s
  if /\A[0-9]+\Z/.match s
    return false if s.to_i == 0
    if s.to_i % 4 == 0
      true
    else
      false
    end
  else
    false
  end
end

puts starts_with_consonant?("0") == false
puts starts_with_consonant?("a") == false
puts starts_with_consonant?("b") == true

puts binary_multiple_of_4?("8") == true
puts binary_multiple_of_4?("9") == false
puts binary_multiple_of_4?("S") == false
puts binary_multiple_of_4?("1010100") == true
puts binary_multiple_of_4?("0") == false

