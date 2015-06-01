def set_values(spending_amount)
  @bought = (spending_amount/2).floor
  @empties = spending_amount
  @caps = spending_amount
  @bottles = spending_amount
  @amt_from_caps = 0
  @amt_from_bottles = 0
end

def return_empties
  if @empties >= 2
      @empties -= 1
      @caps += 1
      @bottles += 1
      @amt_from_bottles +=1
  end
end

def return_caps
  if @caps >= 4
      @caps -= 3
      @empties += 1
      @bottles += 1
      @amt_from_caps +=1
  end
end

def recycle
  while (@empties || @caps)>= 2
    return_empties
    return_caps
  end
total = @bottles 
puts "You would get #{total} of bottles. 
#{@bought} from your purchase, #{@amt_from_caps} from recycling your caps, 
and #{@amt_from_bottles} from recycling your empty bottles. 
You will have #{@caps} caps and #{@empties} bottles leftover for recycling next time!"
end

def rich_enough?(spending_amount)
if spending_amount>=2
 set_values(spending_amount)
else
 puts 'Sorry you need at least 2 dollars to buy a bottle'
end
end

def ask
  puts "Hello would you like to recycle today?"
  answer = gets.chomp.downcase
  if answer[0] == 'y'
    puts "how much would you like to spend?"
    spending_amount = gets.chomp.to_i
    rich_enough?(spending_amount)
    recycle
  else 
    puts "Ok. Thanks for stopping by."
  end
  ask
end



ask
