
def start(x)
  bought = (x/2).floor
  empties = x
  caps = x
  bottles = x
  amt_from_caps = 0
  amt_from_empties = 0

  while (empties || caps)>= 2
    if empties >= 2
      empties -= 1
      caps += 1
      bottles += 1
      amt_from_empties +=1
    end

    if caps >= 4
      empties += 1
      bottles += 1
      caps -= 3
      amt_from_caps +=1
    end
  end

total = bottles 
puts "You would get #{total} of bottles. 
#{bought} from your purchase, #{amt_from_caps} from recycling your caps, 
and #{amt_from_empties} from recycling your empty bottles. 
You will have #{caps} caps and #{empties} bottles leftover for recycling next time!"
end

def rich_enough?(x)
if x>=2
 start(x)
else
 puts 'Sorry you need at least 2 dollars to buy a bottle'
end
end

def ask
  puts "hello how much would you like to spend?"
  x = gets.chomp.to_i
  rich_enough?(x)
  ask
end

ask
