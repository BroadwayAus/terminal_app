class Player

    def initialize(name, army, prim_points, sec_points, cmd_points)
        @name = name.capitalize
        @army = army.capitalize
        @prim_points = prim_points.to_i
        @sec_points = sec_points.to_i
        @cmd_points = cmd_points.to_i
    end

    def display_score
        
        puts "      █▀█ █░░ ▄▀█ █▄█ █▀▀ █▀█".light_cyan
        puts "      █▀▀ █▄▄ █▀█ ░█░ ██▄ █▀▄".light_cyan
        puts "#{@name} - Playing #{@army}.".light_cyan
        puts "  Primary points: #{@prim_points}.".light_cyan
        puts "  Secondary points: #{@sec_points}.".light_cyan
        puts "  Command points: #{@cmd_points}.".light_cyan
        puts "      Total victory points: #{@prim_points + @sec_points}.".light_cyan 
    end

    attr_reader :name, :army
    attr_accessor :prim_points, :sec_points, :cmd_points
end