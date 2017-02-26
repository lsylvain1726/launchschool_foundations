# mortgage_calcualtor.rb

# ask the user for the loan amount
# ask the user for the Annual Percentage Rate(APR)
# ask the user for the loan duration
# calculate the monthly interest by dividing annual interest by 12
# note:monthly interest rate divide by 100 to make it decimal
# calculate loan duration in months by dividing years by 12
# calculate mortgage: m = p * (j / (1 - (1 + j)**(-n)))
# output result

def prompt(message)
  puts "=> #{message}"
end

loop do # main loop
  loan_amount = ''
  loop do
    prompt("What is your loan amount")
    loan_amount = gets.chomp

    if loan_amount.empty? || loan_amount.to_f < 0
      prompt("Must enter positive number")
    else
      break
    end
  end

  apr = ''
  loop do
    prompt("What is your annual percentage rate(APR)? (%)")
    apr = gets.chomp

    if apr.empty? || apr.to_f < 0
      prompt("Must enter positive number.")
    else
      break
    end
  end

  loan_duration = ''
  loop do
    prompt("What is your loan duration? (in years)")
    loan_duration = gets.chomp

    if loan_duration.empty? || loan_duration.to_i <= 0
      prompt("Please enter a year greater than 0")
    else
      break
    end
  end

  monthly_interest = (apr.to_f / 12) / 100
  monthly_duration = loan_duration.to_i * 12
  monthly_payment = loan_amount.to_f *
                    (monthly_interest /
                    (1 - (1 + monthly_interest)**(-monthly_duration.to_i)))

  prompt("Your monthly interest payment is $#{monthly_payment.round(2)}")

  prompt("Do you want to perform another calculation")
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt("Thank you for using my mortgage calculator")
