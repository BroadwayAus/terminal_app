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

end