
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
 puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_1 = deal_card
  card_2 = deal_card
  sum = card_1 + card_2
  display_card_total(sum)
  return sum
end

def hit?(num)
  prompt_user
  input = get_user_input
  if input == "s"
    num
    elsif input =="h"
    num += deal_card
  end
end


def invalid_command
  puts "Please enter a valid command"
end

def runner
  welcome
  total = initial_round
  hand = total
  until hand > 21 do
    hand = hit?(hand)
    if hand > 21
    end_game(hand)
    end
    display_card_total(hand)
  end
end
