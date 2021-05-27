def app_title
    puts "      ░░██╗██╗░█████╗░██╗░░██╗  ██████╗░░█████╗░██╗███╗░░██╗████████╗".light_cyan
    puts "      ░██╔╝██║██╔══██╗██║░██╔╝  ██╔══██╗██╔══██╗██║████╗░██║╚══██╔══╝".light_cyan
    puts "      ██╔╝░██║██║░░██║█████═╝░  ██████╔╝██║░░██║██║██╔██╗██║░░░██║░░░".light_cyan
    puts "      ███████║██║░░██║██╔═██╗░  ██╔═══╝░██║░░██║██║██║╚████║░░░██║░░░".light_cyan
    puts "      ╚════██║╚█████╔╝██║░╚██╗  ██║░░░░░╚█████╔╝██║██║░╚███║░░░██║░░░".light_cyan
    puts "      ░░░░░╚═╝░╚════╝░╚═╝░░╚═╝  ╚═╝░░░░░░╚════╝░╚═╝╚═╝░░╚══╝░░░╚═╝░░░".light_cyan
    puts ""
    puts "      ████████╗██████╗░░█████╗░░█████╗░██╗░░██╗███████╗██████╗░".light_cyan
    puts "      ╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗██║░██╔╝██╔════╝██╔══██╗".light_cyan
    puts "      ░░░██║░░░██████╔╝███████║██║░░╚═╝█████═╝░█████╗░░██████╔╝".light_cyan
    puts "      ░░░██║░░░██╔══██╗██╔══██║██║░░██╗██╔═██╗░██╔══╝░░██╔══██╗".light_cyan
    puts "      ░░░██║░░░██║░░██║██║░░██║╚█████╔╝██║░╚██╗███████╗██║░░██║".light_cyan
    puts "      ░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝".light_cyan
    puts ""
    puts ""
end

def player1_input player1_name, player1_army, player1_cp
    while true
        puts "Enter player one name: "
        @player1_name = gets.chomp
        puts "Enter player one army: "
        @player1_army = gets.chomp
        while @player1_army.match /^[0-9]+$/
            puts "Please enter an valid army"
            @player1_army = gets.chomp
        end
        puts "Enter player one command points: "
        @player1_cp = gets.chomp
        while @player1_cp.match /^[a-zA-Z]+$/
            puts "Please enter a number"
            @player1_cp = gets.chomp
        end
        break
    end
end

def player2_input player2_name, player2_army, player2_cp
    while true
        puts "Enter player two name: "
        @player2_name = gets.chomp
        puts "Enter player two army: "
        @player2_army = gets.chomp
        while @player2_army.match /^[0-9]+$/
            puts "Please enter an valid army"
            @player2_army = gets.chomp
        end
        puts "Enter player two command points: "
        @player2_cp = gets.chomp
        while @player2_cp.match /^[a-zA-Z]+$/
            puts "Please enter a number"
            @player2_cp = gets.chomp
        end
        break
    end
end