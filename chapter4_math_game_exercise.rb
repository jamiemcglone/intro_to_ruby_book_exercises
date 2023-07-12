puts("Exercise 1")
num1 = rand(1..10)
num2 = rand(1..10)
puts("What is #{num1} + #{num2}?")
user_answer = gets.to_i
if user_answer == num1 + num2
    puts("Well done! You got it correct. :-)")
else 
    puts("Idiot! That is not the right answer >:|")
end
# puts("Exercise 2")
# puts("What is your full name?")
# name = gets
# puts(name.chomp.titleize)
