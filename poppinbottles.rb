# def coo(caps)

# i = caps
# until i < 4
#   bottles_from_caps = 0

#   bottles_from_caps += (caps/4).floor
#   i - ()
# end


# puts bottles_from_caps
# end

# puts coo(12)
# 

# 
# 


# i = bottles
# h = bottles
# def caps(i)
# while i >=4
#   y=0
#   y += (i/4).floor
#   i -= ((i/4).floor * 4)
# end
# return y
# end

# def caps(i)
#   if i >= 4
#     return (i/4).floor
#   else
#     return 0
#   end
# end

# def bot(h)
# while h >=2
#   x = 0
#   x +=(h/2).floor
#   h -=((h/2).floor * 2)
# end
# return x
# end

# def bot(i)
#   if i >= 2
#     return (i/2).floor
#   else
#     return 0
#   end
# end

# def startamt(money)

# bottles = (money/2).floor 
# recycling = bot(bottles) + caps(bottles)
# total = bottles+ bot(bottles) + caps(bottles)
# if recycling > 2
#   total += (bot(recycling) + caps(recycling))
# end
# puts total
# end

# bottles = 0
# emp = 0
# cap = 0

# def capadd
#   bottles = bottles + 1
#   emp = emp + 1
# end

# def empadd
#   bottles = bottles + 1
#   cap = cap + 1
# end


# def caps(start)
#   i = start
#   while i>= 4
#     i -= 3
#     capadd
#   end
# end

# def empties(start)
#   i = start
#   while i >= 2
#     i -= 1

#   end
#   p
# end

# empties(10)

 


def start(x)

  empties = x
  caps = x
  bottles = x

  while (empties || caps)>= 2
    if empties >= 2
      empties = empties - 1
      caps = caps + 1
      bottles = bottles + 1
    end

    if caps >= 4
      empties += 1
      bottles += 1
      caps -= 3
    end
  end

total = bottles 
puts "You would get #{total} of bottles"
end


def ask
  puts "hello how much would you like to spend?"
   x = gets.chomp.to_i
  start(x)
  ask
end

ask












# startamt(20)