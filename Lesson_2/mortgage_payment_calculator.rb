require 'yaml'
MESSAGES = YAML.load_file('mortgage_messages.yml')
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

def valid_percentage?(num)
  /\A(\.\d+)?\z/.match(num)
end

def valid_duration?(duration)
  duration.downcase == 'months' || duration.downcase == 'years'
end

def valid_term?(num)
  /\A[+-]?\d+\z/.match(num)
end

def calc_term(l, duration)
  if duration.downcase() == 'years'
    l *= 12
  end
  l
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
prompt('lines')
prompt('info_request')
prompt('lines')

loop do
  mortgage_amt = ''
  loop do
    prompt('amt_input')
    mortgage_amt = Kernel.gets().chomp()

    if valid_number?(mortgage_amt)
      prompt('thanks')
      prompt('lines')
      break
    else
      prompt('valid_num')
    end
  end

  apr = ''
  monthly_apr = ''
  loop do
    prompt('apr_input')
    apr = Kernel.gets().chomp()

    if valid_percentage?(apr)
      prompt('thanks')
      prompt('lines')
      monthly_apr = apr.to_f / 12
      break
    else
      prompt('valid_p')
    end
  end

  duration = ''
  loop do
    prompt('m_y_input')
    duration = Kernel.gets().chomp()

    if valid_duration?(duration)
      prompt('thanks')
      prompt('lines')
      break
    else
      prompt('valid_duration')
    end
  end

  term = ''
  loop do
    Kernel.puts("How long is the term of your loan in #{duration}?")
    term = Kernel.gets().chomp()

    if valid_term?(term)
      term = calc_term(term.to_i(), duration)
      prompt('thanks')
      prompt('lines')
      break
    else
      prompt('valid_term')
    end
  end

  payment = mortgage_amt.to_f * (monthly_apr / (1 - (1 + monthly_apr)**(-term)))
  Kernel.puts("Your monthly payment is: #{payment}")

  Kernel.puts()
  Kernel.puts()
  prompt('repeat?')
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('goodbye')
