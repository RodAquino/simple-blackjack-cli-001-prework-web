def welcome
  # code #welcome here
  puts  "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  cards = rand(1..11)
  return cards



end


def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"

end

def prompt_user
  # code #prompt_user here
  puts  "Type 'h' to hit or 's' to stay"
end


def get_user_input
  # code #get_user_input here
  user_input = gets.chomp

end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round

  sum = deal_card + deal_card
   display_card_total(sum)

  sum


end

def hit?(entry)
  prompt_user
  user = get_user_input

  if user == "h"

    deal_card + entry
  elsif user == "s"
    entry

  else
    invalid_command
    prompt_user
  end

 end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner

#code runner here
 welcome
  sum = initial_round
until sum > 21
  sum = hit?(sum)
 display_card_total(sum)
 end
end_game(sum)
end
