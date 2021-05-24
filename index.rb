require "rspec"
require "colorize"
require "tty-prompt"
require_relative "./methods"

system "clear"
app_title

#input for player 1
puts "Enter player 1 name: "
player1_name = gets.chomp
puts "Enter player 1 army: "
player1_army = gets.chomp
puts "Enter player 1 command points: "
player1_cp = gets.chomp.to_i
player1_pp = 0
player1_sp= 0

#input for player 2
puts "Enter player 2 name: "
player2_name = gets.chomp
puts "Enter player 2 army: "
player2_army = gets.chomp
puts "Enter player 2 command points: "
player2_cp = gets.chomp.to_i
player2_pp = 0
player2_sp = 0

player1_points(player1_name, player1_army, player1_pp, player1_sp, player1_cp)