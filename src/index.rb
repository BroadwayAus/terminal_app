require "rspec"
require "colorize"
require "tty-prompt"
require_relative "./methods"
require_relative "./player"
prompt = TTY::Prompt.new

system "clear"
app_title

#input for player 1
puts "Enter player one name: "
player1_name = gets.chomp
puts "Enter player one army: "
player1_army = gets.chomp
puts "Enter player one command points: "
player1_cp = gets.chomp
player1_pp = 0
player1_sp= 0

player1 = Player.new(player1_name, player1_army, player1_pp, player1_sp, player1_cp)

#input for player 2
puts "Enter player two name: "
player2_name = gets.chomp
puts "Enter player two army: "
player2_army = gets.chomp
puts "Enter player two command points: "
player2_cp = gets.chomp
player2_pp = 0
player2_sp = 0

player2 = Player.new(player2_name, player2_army, player2_pp, player2_sp, player2_cp)

system "clear"
app_title

player1.display_score
puts ""
puts ""
player2.display_score
puts ""
puts ""
menu_input = prompt.select("What would you like to do?") do |menu|
    menu.choice name: "Enter points for #{player1.name}", value: 1
    menu.choice name: "Enter spent command points for #{player1.name}", value: 2
    menu.choice name: "Enter points for #{player2.name}", value: 3
    menu.choice name: "Enter spent command points for #{player2.name}", value: 4
    menu.choice name: "Exit", value: 5
end
case(menu_input)
    when 1
        puts "How many primary points did #{player1.name} score this turn: "
        player1_prim_input = gets.chomp.to_i
        player1.prim_points = player1.prim_points + player1_prim_input
        puts "How many secondary points did #{player1.name} score this turn: "
    end
    when 2
        
    end