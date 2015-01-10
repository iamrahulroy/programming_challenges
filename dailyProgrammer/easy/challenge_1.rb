# create a program that will ask the users name, age, and reddit username. have it tell them the information back, in the format:
# your name is (blank), you are (blank) years old, and your username is (blank)
# for extra credit, have the program log this information in a file to be accessed later.



def reddit_details
  puts "Enter your name"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp
  until (age = age[/[0-9]*/] and age.length > 0)
    puts "Please, enter a valid age"
    age = gets.chomp
  end

  puts "What's your reddit username"
  username = gets.chomp
  until (username = username[/\A[a-z0-9_-]+\Z/] and username.length > 0)
    puts "Please, enter a valid username"
    username = gets.chomp
  end

  puts "Your name is '#{name}', you are '#{age}' years old, and your username is '#{username}'."
end

reddit_details
