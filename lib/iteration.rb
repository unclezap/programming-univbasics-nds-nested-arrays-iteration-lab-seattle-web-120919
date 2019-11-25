def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
new_array = []
row_index = 0
while row_index < src.count do
  new_array.push("I love " + src[row_index][0] + " and " + src[row_index][1] + " on my pizza")
  row_index += 1
end
return new_array
end

def find_greater_pair(src)
pair_index = 0
new_array = []

while pair_index < src.count

  if src[pair_index][0] > src[pair_index][1]
    new_array << src[pair_index][0]
  else
    new_array << src[pair_index][1]
  end

pair_index +=1
end

return new_array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
sum = 0
index_count = 0

while index_count < src.count
 
  if (src[index_count][0] % 2 === 0) && (src[index_count][1] % 2 === 0)
    sum += src[index_count][0] + src[index_count][1]  
  end
  
  index_count +=1
end

sum

end
