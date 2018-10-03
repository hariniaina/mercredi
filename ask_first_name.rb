def ask_first_name
	puts "entre votre first name"
	gets.chomp
end
def say_hello
	"bonjour"
end
puts "#{say_hello} #{ask_first_name}"
