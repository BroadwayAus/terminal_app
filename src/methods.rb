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

# def menu(player1, player2)
#     prompt = TTY::Prompt.new
#     menu_input = prompt.select("What would you like to do?") do |menu|
#         menu.choice name: "Enter points for #{player1}", value: 1
#         menu.choice name: "Enter spent command points for #{player1}", value: 2
#         menu.choice name: "Enter points for #{player2}", value: 3
#         menu.choice name: "Enter spent command points for #{player2}", value: 4
#         menu.choice name: "Exit", value: 5
#     end
#     case(menu_input)
#     when 1
#         puts "How many primary points did #{player1} score this turn: "
#         player1_prim_input = gets.chomp.to_i
#         player1.prim_points = player1_prim_input
#         puts "How many secondary points did #{player1} score this turn: "
#     end
# end