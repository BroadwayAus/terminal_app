require "rspec"
require "colorize"
require "tty-prompt"
require_relative "./methods"
require_relative "./player"
prompt = TTY::Prompt.new

system "clear"
app_title

@player1_name = ""
@player1_army = ""
@player1_pp = 0
@player1_sp= 0
@player1_cp = 0
player1_input @player1_name, @player1_army, @player1_cp
player1 = Player.new(@player1_name, @player1_army, @player1_pp, @player1_sp, @player1_cp)

@player2_name = ""
@player2_army = ""
@player2_pp = 0
@player2_sp= 0
@player2_cp = 0
player2_input @player2_name, @player2_army, @player2_cp
player2 = Player.new(@player2_name, @player2_army, @player2_pp, @player2_sp, @player2_cp)

system "clear"
app_title

player1.display_score
puts ""
puts ""
player2.display_score
puts ""
puts ""
while true
main_menu_input = prompt.select("What would you like to do?") do |menu|
    menu.choice name: "Enter points for #{player1.name}", value: 1
    menu.choice name: "Enter spent command points for #{player1.name}", value: 2
    menu.choice name: "Enter points for #{player2.name}", value: 3
    menu.choice name: "Enter spent command points for #{player2.name}", value: 4
    menu.choice name: "Modify command/victory points", value: 5
    menu.choice name: "Exit", value: 6
end
case(main_menu_input)
    when 1
        puts "How many primary points did #{player1.name} score this turn: "
        player1.prim_points = gets.chomp.to_i + player1.prim_points
        puts "How many secondary points did #{player1.name} score this turn: "
        player1.sec_points = gets.chomp.to_i + player1.sec_points
        system "clear"
        app_title
        player1.display_score
        puts ""
        puts ""
        player2.display_score
        puts ""
        puts ""
    when 2
        puts "How many command points did #{player1.name} spend this turn: "
        player1.cmd_points = player1.cmd_points - gets.chomp.to_i
        system "clear"
        app_title
        player1.display_score
        puts ""
        puts ""
        player2.display_score
        puts ""
        puts ""
    when 3
        puts "How many primary points did #{player2.name} score this turn: "
        player2.prim_points = gets.chomp.to_i + player2.prim_points
        puts "How many secondary points did #{player2.name} score this turn: "
        player2.sec_points = gets.chomp.to_i + player2.sec_points
        system "clear"
        app_title
        player1.display_score
        puts ""
        puts ""
        player2.display_score
        puts ""
        puts ""
    when 4
        puts "How many command points did #{player2.name} spend this turn: "
        player2.cmd_points = player2.cmd_points - gets.chomp.to_i
        system "clear"
        app_title
        player1.display_score
        puts ""
        puts ""
        player2.display_score
        puts ""
        puts ""
    when 5
        while true
        second_menu_input = prompt.select("What would you like to modify?") do |menu|
            menu.choice name: "Remove victory points for #{player1.name}", value: 1
            menu.choice name: "Add command points for #{player1.name}", value: 2
            menu.choice name: "Remove victory points for #{player2.name}", value: 3
            menu.choice name: "Add command points for #{player2.name}", value: 4
            menu.choice name: "Return to main menu", value: 5
    end
        case(second_menu_input)
            when 1
                puts "How many primary victory points would you like to remove?"
                player1.prim_points =player1.prim_points - gets.chomp.to_i
                puts "How many secondary points would you like to remove?"
                player1.sec_points = player1.sec_points - gets.chomp.to_i
                system "clear"
                app_title
                player1.display_score
                puts ""
                puts ""
                player2.display_score
                puts ""
                puts ""
            when 2
                puts "How many command points would you like to add"
                player1.cmd_points = player1.cmd_points + gets.chomp.to_i
                system "clear"
                app_title
                player1.display_score
                puts ""
                puts ""
                player2.display_score
                puts ""
                puts ""
            when 3
                puts "How many primary victory points would you like to remove?"
                player2.prim_points = player2.prim_points - gets.chomp.to_i
                puts "How many secondary victory points would you like to remove?"
                player2.sec_points = player2.prim_points - gets.chomp.to_i
                system "clear"
                app_title
                player1.display_score
                puts ""
                puts ""
                player2.display_score
                puts ""
                puts ""
            when 4
                puts "How many command points would you like to add"
                player1.cmd_points = player2.cmd_points + gets.chomp.to_i
                system "clear"
                app_title
                player1.display_score
                puts ""
                puts ""
                player2.display_score
                puts ""
                puts ""
            when 5
                break
            end
        end
    when 6
        break
    end
end

system "clear"
puts "Goodbye"