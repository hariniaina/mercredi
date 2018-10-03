def perform
    def define_password
	puts " entrer votre mot de passe"
	@user_password=gets.chomp.to_s
    end
     define_password
    def password_verification
    	puts "entrer une nouvelle foi votre mot de passe"
    	@new_password=gets.chomp.to_s
    end
   password_verification
    def connection
    	puts "entre votre mon de passe pour vous connect"
    @connect=gets.chomp.to_s
    end
    connection
    if @new_password ==  @connect
    	puts "you are online"
    else
    	connection
    end
    
end
perform