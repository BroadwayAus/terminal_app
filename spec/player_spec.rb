require_relative "../src/player"

describe "Player" do

    before(:each) do
        @player = Player.new("Mitch", "Necron", 10, 5, 6)
    end

    it "should be an instance of Player" do
        expect(@player).to be_a Player
    end

    it "should initalise with a name property" do
        expect(@player.name).to eq("Mitch")
    end

    it "should be a data type of interger" do
        expect(@player.prim_points).to be_a Integer
    end

    it "should be a data type of interger" do
        expect(@player.sec_points).to be_a Integer
    end

    it "should be a data type of interger" do
        expect(@player.cmd_points).to be_a Integer
    end
end