# Assignment: Mortgage / Car Loan Calculator

# prompt
def prompt(message)
  Kernel.puts("=> #{message}")
end

# validate integer input
def integer?(num)
  num.to_i.to_s == num
end

# validate float input
def float?(num)
  num.to_f.to_s == num
end

# validate number input
def number?(num)
  integer?(num) || float?(num)
end

# greater than 0
def not_zero?(num)
  num.to_i > 0 || num.to_f > 0
end

# main loop
loop do
  prompt("Welcome to the mortgage/car calculator!")
  prompt("We will be need a few bits of information from you.")

  # loan amount input - loan_amount
  loan_amount = ''
  loop do
    prompt("Please enter the amount you will borrow:")
    loan_amount = Kernel.gets().chomp()
    if integer?(loan_amount) && not_zero?(loan_amount)
      break
    else
      prompt("Hmm...that number doesn't seem right.")
    end
  end

  # APR input - apr
  apr = ''
  loop do
    prompt("Please enter the APR for your loan:")
    apr = Kernel.gets().chomp()
    if number?(apr) && not_zero?(apr)
      break
    else
      prompt("Hmm...that number doesn't seem right.")
    end
  end

  # loan duration input - loan_time
  loan_time = ''
  loop do
    prompt("Please enter the duration (in months) of your loan:")
    loan_time = Kernel.gets().chomp()
    if integer?(loan_time) && not_zero?(loan_time)
      break
    else
      prompt("Hmm...that number doesn't seem right.")
    end
  end
  # calculation
  # convert APR to appropriate type and convert into decimal form and monthly amount
  apr_f = apr.to_f / 100 / 12

  # calculate monthly amount and convert inputs into appropriate type
  month_amount = (loan_amount.to_i * ((1 + apr_f)**loan_time.to_i)) * apr_f / (((1 + apr_f)**loan_time.to_i) - 1)

  operator_prompt = <<-MSG
  Here are the results of the calculation:
      -Amount borrowed: $#{loan_amount}
      -Interest rate/APR:  #{apr} %
      -Loan duration (months): #{loan_time} months
      -Monthly interest rate: #{format('%02.4f', apr_f)}
      -Monthly amount to pay: $#{format('%02.2f', month_amount)}
  MSG
  prompt(operator_prompt)
  # ask to calculate again or not
  prompt("Do you want to perform another calculation (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
prompt("Thank you for using the calculator. Good bye!")
