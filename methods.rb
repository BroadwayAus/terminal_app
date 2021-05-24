def app_title
    puts "░░██╗██╗░█████╗░██╗░░██╗  ██████╗░░█████╗░██╗███╗░░██╗████████╗".yellow
    puts "░██╔╝██║██╔══██╗██║░██╔╝  ██╔══██╗██╔══██╗██║████╗░██║╚══██╔══╝".yellow
    puts "██╔╝░██║██║░░██║█████═╝░  ██████╔╝██║░░██║██║██╔██╗██║░░░██║░░░".yellow
    puts "███████║██║░░██║██╔═██╗░  ██╔═══╝░██║░░██║██║██║╚████║░░░██║░░░".yellow
    puts "╚════██║╚█████╔╝██║░╚██╗  ██║░░░░░╚█████╔╝██║██║░╚███║░░░██║░░░".yellow
    puts "░░░░░╚═╝░╚════╝░╚═╝░░╚═╝  ╚═╝░░░░░░╚════╝░╚═╝╚═╝░░╚══╝░░░╚═╝░░░".yellow
    puts "\n"
    puts "████████╗██████╗░░█████╗░░█████╗░██╗░░██╗███████╗██████╗░".yellow
    puts "╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗██║░██╔╝██╔════╝██╔══██╗".yellow
    puts "░░░██║░░░██████╔╝███████║██║░░╚═╝█████═╝░█████╗░░██████╔╝".yellow
    puts "░░░██║░░░██╔══██╗██╔══██║██║░░██╗██╔═██╗░██╔══╝░░██╔══██╗".yellow
    puts "░░░██║░░░██║░░██║██║░░██║╚█████╔╝██║░╚██╗███████╗██║░░██║".yellow
    puts "░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝".yellow
    puts ""
    puts ""
end

def player1_points(name1, army1, prim_pnt1, sec_pnt1, cmd_pnts1)
    puts "█▀█ █░░ ▄▀█ █▄█ █▀▀ █▀█   ▄█".light_cyan
    puts "█▀▀ █▄▄ █▀█ ░█░ ██▄ █▀▄   ░█".light_cyan
    puts "#{name1} - Playing #{army1}.".light_cyan
    puts "  Primary points: #{prim_pnt1}.".light_cyan
    puts "  Secondary points: #{sec_pnt1}.".light_cyan
    puts "  Command points: #{cmd_pnts1}.".light_cyan
    puts "      Total victory points: #{prim_pnt1 += sec_pnt1}.".light_cyan
end

def player2_points(name2, army2, prim_pnt2, sec_pnt2, cmd_pnts2)
    puts "█▀█ █░░ ▄▀█ █▄█ █▀▀ █▀█   ▀█".red
    puts "█▀▀ █▄▄ █▀█ ░█░ ██▄ █▀▄   █▄ ".red
    puts "#{name2} - Playing #{army2}.".red
    puts "  Primary points: #{prim_pnt2}.".red
    puts "  Secondary points: #{sec_pnt2}.".red
    puts "  Command points: #{cmd_pnts2}.".red
    puts "      Total victory points: #{prim_pnt2 + sec_pnt2}.".red
end