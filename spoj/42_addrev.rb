# Adding Reverse numbers http://www.spoj.com/problems/ADDREV/

# Sample input:
# 3
# 24 1
# 4358 754
# 305 794
# Sample output:
# 34 -> 42 + 1 = 43 reverse it - 34
# 1998
# 1

num_times = gets.to_i

until (num_times <= 10000 and num_times >= 0)
  num_times = gets.chomp.to_i
end

num_times.times do
  number_input_array = gets.chomp.split(" ")

  first_num_reverse_array = number_input_array[0].reverse.split("")
  second_num_reverse_array = number_input_array[1].reverse.split("")

  sum1 = first_num_reverse_array.inject {|sum, num| sum + num}
  sum2 = second_num_reverse_array.inject {|sum, num| sum + num}
  total_sum = (sum1.to_i + sum2.to_i).to_s.reverse.sub(/^[0]+/, "")
  puts total_sum
end
