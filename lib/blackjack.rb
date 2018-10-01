def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
 input = gets.chomp
end

def end_game(x)
  # code #end_game here
  puts "Sorry, you hit #{x}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  num1 = deal_card
  num2 = deal_card
  sum = num1 + num2
  display_card_total(sum)
 return sum
end

def hit?(curtot)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 'h'
    num = deal_card
    curtot += num
    elsif input == 's'
     curtot
  else
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome 
  curtot = initial_round 
  until curtot > 21
  curtot = hit?(curtot)
  display_card_total(curtot)
end
  end_game(curtot)
end
    
