def set_values(x)
  @bought = (x/2).floor
  @empties = x
  @caps = x
  @bottles = x
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

def rich_enough?(x)
if x>=2
 set_values(x)
else
 puts 'Sorry you need at least 2 dollars to buy a bottle'
end
end

def ask
  puts "Hello would you like to recycle today?"
  answer = gets.chomp.downcase
  if answer[0] == 'y'
    puts "how much would you like to spend?"
    x = gets.chomp.to_i
    rich_enough?(x)
    recycle
  else 
    puts "Ok. Thanks for stopping by."
  end
  ask
end



ask
