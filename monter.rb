class Monter
$position = 1
def building_pyramid(initial)
    pos = initial.to_i
    @number = 10
    diez = 1
    while @number > 0
        if @number == pos
            vide = @number - 1
            puts " "*vide << "b" << "*"*diez
        else
            puts " "*@number << "*"*diez
        end
        @number -= 1
        diez += 2
    end
end

def lancer
    puts "BIENVENUE DANS LA MONTER EN ESCALIER"  
    building_pyramid($position)
    puts "Entrer un chiffre"
    print "> "   
    chx = gets.chomp.to_i
    if chx == 5 || chx == 6
        $position += 1
        if $position == 11
            puts"vous avez gagné"
        else
            building_pyramid($position)
            puts "Vous avez avancer d'une case : maintenant vous etes en #{$position - 1} etages"
        end
    elsif chx == 1
        $position -= 1
        if $position == 0
            $position = 1 
            building_pyramid($position)  
            puts "GAME OVER : il faut monter " 
            m   
            else
            puts "Vous avez reculer d'une case vous etes en #{$position - 1} etages"
            end
    elsif chx == 2 || chx == 3 || chx == 4
        building_pyramid($position)
        puts "Votre homme est resté au #{$position - 1} etages"
    else 
        building_pyramid($position)
        puts "Nombre entre 1 et 6 seulement"
    end
    def m
    puts "Voulez-vous rejouer? (o/n) "
            reps = gets.chomp.to_s.downcase
            if reps == "o"
            $position = 1
            building_pyramid($position)
            elsif reps == "n"
                exit
            else 
                $position = 1
                puts "Entrer : 'o' ou 'n'"
                m
            end
end
    lancer
end
end
jeux = Monter.new
jeux.lancer