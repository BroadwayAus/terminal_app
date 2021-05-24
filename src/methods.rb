def app_title
    puts "░░██╗██╗░█████╗░██╗░░██╗  ██████╗░░█████╗░██╗███╗░░██╗████████╗".light_cyan
    puts "░██╔╝██║██╔══██╗██║░██╔╝  ██╔══██╗██╔══██╗██║████╗░██║╚══██╔══╝".light_cyan
    puts "██╔╝░██║██║░░██║█████═╝░  ██████╔╝██║░░██║██║██╔██╗██║░░░██║░░░".light_cyan
    puts "███████║██║░░██║██╔═██╗░  ██╔═══╝░██║░░██║██║██║╚████║░░░██║░░░".light_cyan
    puts "╚════██║╚█████╔╝██║░╚██╗  ██║░░░░░╚█████╔╝██║██║░╚███║░░░██║░░░".light_cyan
    puts "░░░░░╚═╝░╚════╝░╚═╝░░╚═╝  ╚═╝░░░░░░╚════╝░╚═╝╚═╝░░╚══╝░░░╚═╝░░░".light_cyan
    puts "\n"
    puts "████████╗██████╗░░█████╗░░█████╗░██╗░░██╗███████╗██████╗░".light_cyan
    puts "╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗██║░██╔╝██╔════╝██╔══██╗".light_cyan
    puts "░░░██║░░░██████╔╝███████║██║░░╚═╝█████═╝░█████╗░░██████╔╝".light_cyan
    puts "░░░██║░░░██╔══██╗██╔══██║██║░░██╗██╔═██╗░██╔══╝░░██╔══██╗".light_cyan
    puts "░░░██║░░░██║░░██║██║░░██║╚█████╔╝██║░╚██╗███████╗██║░░██║".light_cyan
    puts "░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝".light_cyan
    puts ""
    puts ""
end

def menu(player1, player2)
    prompt = TTY::Prompt.new
    prompt.select("What would you like to do?") do |menu|
        menu.choice name: "Enter points for #{player1}".light_cyan
        menu.choice name: "Enter spent command points for #{player1}".light_cyan
        menu.choice name: "Enter points for #{player2}".red
        menu.choice name: "Enter spent command points for #{player2}".red
        menu.choice name: "Exit"
    end
end