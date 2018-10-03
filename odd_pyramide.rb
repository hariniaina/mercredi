def mah
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
n=gets.chomp
n=n.to_i
     if n<25 
      v=0 
      code=1
while v < n
 
      puts " " *n << "#" *code
      n-=1
      code+=2
end
     else 
  puts "votre nbr est trop grand"
       
     end 
end
puts mah 

