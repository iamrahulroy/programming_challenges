# Your program is to use the brute-force approach in order to find the Answer to Life, the Universe, and Everything. More precisely... rewrite small numbers from input to output. Stop processing input after reading in the number 42. All numbers at input are integers of one or two digits. http://www.spoj.com/problems/TEST/

while(true)
  number = gets.chomp.to_i
  if number == 42
    break
  end
  puts number
end
