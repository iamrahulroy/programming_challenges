# create a program that will ask the users name, age, and reddit username. have it tell them the information back, in the format: "your name is (blank), you are (blank) years old, and your username is (blank)". For extra credit, have the program log this information in a file to be accessed later. http://www.reddit.com/r/dailyprogrammer/comments/pih8x/easy_challenge_1/

def reddit_details
  puts "Enter your name"
  name = gets.chomp
  until (name == name[/[a-zA-Z]*/] and name.length > 0)
    puts "No offence, but ain't nobody uses that name(#{name}) in real life"
    name = gets.chomp
  end

  puts "How old are you?"
  age = gets.chomp
  until (age == age[/[0-9]*/] and age.length > 0)
    puts "Please, enter a valid age"
    age = gets.chomp
  end

  puts "What's your reddit username"
  username = gets.chomp
  until (username == username[/\A[a-z0-9_-]+\Z/] and username.length > 0)
    puts "Please, enter a valid username"
    username = gets.chomp
  end

  output = "Your name is '#{name}', you are '#{age}' years old, and your username is '#{username}'."

  puts output
  File.open('log.txt', 'a') {|f| f.puts output}
end

reddit_details
