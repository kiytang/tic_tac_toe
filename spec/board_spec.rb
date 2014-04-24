require "spec_helper"

module TicTacToe
  describe Board do
    
    context "#initialize" do
      it "initializes the board with a grid" do
        expect {Board.new(grid: "grid")}.to_not raise_error 
      end

      it "sets the grid with three rows by default" do
        board = Board.new
        expect(board.grid).to have(3).things
      end

      it "creates three things in each row by default" do
        board = Board.new
        board.grid.each do |row|
          expect(row).to have(3).things
        end
      end
    end

    context "#grid" do
      it "it returns the instance variable" do
        board = Board.new(grid: "Hello")
        expect(board.grid).to eq "Hello"
      end
    end   

    context "#get_cell" do
      it "returns the cell based on the (x,y) cordinate" do
        grid = [["","",""],["","","hello"], ["","",""]]
        board = Board.new(grid: grid)
        expect(board.get_cell(2,1)).to eq "hello"  
      end
    end

    # context "#set_cell" do
    #   it "updates the value of the cell object at a (x,y) coordinate" do
    #     Cat = Struct.new(:value)
    #     grid = [[Cat.new("cool"),"",""],["","",""],["","",""]]
    #     board = Board.new(grid: grid)
    #     board.set_cell(0,0 "meow")
    #     expect(board.get_cell(0,0).value).to eq "meow"  
    #   end
    # end 
  end
end