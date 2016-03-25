VALID_CHOICES = %w(r p s k l)

rock = 'r'
paper = 'p'
scissors = 's'
spock = 'k'
lizard = 'l'

VALID_NAMES = [rock, paper, scissors, spock, lizard]

def test_method
  prompt('test_message')
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first === 's' && second == 'p') ||
  (first === 'p' && second == 'r') ||
  (first === 'r' && second == 'l') ||
  (first === 'l' && second == 'k') ||
  (first === 'k' && second == 's') ||
  (first === 's' && second == 'l') ||
  (first === 'l' && second == 'p') ||
  (first === 'p' && second == 'k') ||
  (first === 'k' && second == 'r') ||
  (first === 'r' && second == 's') 
end


def options(choice)
  case choice
  when 'r'
    'rock'
  when 'p'
    'paper'
  when 's'
    'scissors'
  when 'k'
    'Spock'
  when 'l'
    'lizard'
  end
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won this round!")
  elsif win?(computer, player)
    prompt("Computer won this round!")
  else
    prompt("It's a tie!")
  end
end


loop do
  player_score = 0
  computer_score = 0
  tie_score = 0
  loop do
    choice = ''
    loop do
      prompt("Choose one: #{VALID_NAMES.join(', ')}")
         user_prompt = <<-MSG
            Enter 'r' for rock
            Enter 'p' for paper
            Enter 's' for scissors
            Enter 'k' for Spock
            Enter 'l' for lizard"
          MSG
      prompt(user_prompt)
      choice = Kernel.gets().chomp()

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose #{options(choice)}; Computer chose: #{options(computer_choice)}")

    display_results(choice, computer_choice)
    
    if win?(choice, computer_choice)
      player_score += 1
    elsif win?(computer_choice, choice)
      computer_score += 1
    else
      tie_score += 1
    end

    prompt("Your score: #{player_score}")
    prompt("Computer score: #{computer_score}")

    #prompt("Do you want to play again?")
    #answer = Kernel.gets().chomp()
    if player_score == 5
      prompt("You won the game!")
    else
      prompt("The computer won the game!")
    end

    if player_score == 5 || computer_score == 5
      break
    end
    #break unless player_score >= 5 #|| computer_score = 5  #||answer == answer.downcase().start_with?('y')
  end
  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
