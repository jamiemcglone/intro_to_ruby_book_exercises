# Method to start the game and pick cards

def start_game(user_score = 0)
    system "clear" 
    puts "Welcome to Maths Flashcards!"
    puts "Choose your flashcards (add|subtract|multiply|divide)"
    pick = gets.chomp.downcase

    operations = {"add" => "+",
                "subtract" => "-",
                "multiply" => "*",
                "divide" => "/"}

    if pick == "add" || pick == "subtract" || pick == "multiply" || pick == "divide"
        flashcards(operations[pick], user_score)
    else
        puts "Sorry, I don't recognise #{pick}"
        puts "Please hit enter to try again"
        gets
        start_game
    end
end

def flashcards(operator, user_score)
    system "clear"
    card_one = Random.rand(1..10)
    card_two = Random.rand(1..10)
    if operator == "/"
        while card_one % card_two != 0
            card_one = Random.rand(1..10)
            card_two = Random.rand(1..10)
        end
    end
    correct = eval("#{card_one}#{operator}#{card_two}")
    puts "#{card_one} #{operator} #{card_two}"
    answer = gets.chomp.to_i

    if answer == correct
        puts "Correct! #{card_one} #{operator} #{card_two} = #{answer}"
        user_score += 1
    else
        puts "Wrong! #{card_one} #{operator} #{card_two} = #{correct}"
    end
    puts "Would you like another card? (yes|no|restart)"
    continue = gets.chomp.downcase

    if continue == "yes"
        puts(user_score)
        flashcards(operator, user_score)
    elsif continue == "no"
        puts "Thanks for playing, you finished with a score of #{user_score}"
        exit
    elsif continue == "restart"
        start_game(user_score)
    else
        puts "Sorry, I don't recognise #{continue}"
        puts "Please hit enter to try again"
        gets
        puts user_score
        flashcards(operator, user_score)
    end
end

start_game
