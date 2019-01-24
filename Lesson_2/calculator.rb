require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def messages(message, lang)
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  /\A[+-]?\d+(\.\d+)?\z/.match(num)
end

def operation_to_message(op)
  operation = case op
              when '1'
                'Adding'
              when '2'
                'Subtracting'
              when '3'
                'Multiplying'
              when '4'
                'Dividing'
              end
  return operation
end

prompt('welcome')

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt('valid_name')
  else
    break
  end
end

Kernel.puts("=> Hi #{name}")

loop do
  number1 = ''
  loop do
    prompt('first_num')
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt('valid_num')
    end
  end

  number2 = ''
  loop do
    prompt('second_num')
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt('valid_num')
    end
  end

  prompt('operator_prompt')

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('valid_operator')
    end
  end

  Kernel.puts("=> #{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_i() / number2.to_i()
           end

  Kernel.puts("=> The result is #{result}")

  prompt('repeat?')
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('goodbye')
