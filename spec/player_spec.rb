require "spec_helper"

module TicTacToe
  describe Player do
    context "#initialize" do

      it "raises an exception when initialized with {}" do
        expect {Player.new({})}.to raise_error
      end

      it "does to raise an error when initialized with a valid input hash" do
        input = {color: "X", name: "Fred"}
        expect {Player.new(input)}.to_not raise_error
      end  
    end 
    
    context "#color" do
      it "returns the color" do
        input = {color: "X", name: "Fred"}
        player = Player.new(input)
        expect(player.color).to eq "X"
      end
    end  

    context "#player_name" do
      it "returns the player's name" do
        input = {color: "X", name: "Fred"}
        player = Player.new(input)
        expect(player.name).to eq "Fred"
      end
    end  
  end
end