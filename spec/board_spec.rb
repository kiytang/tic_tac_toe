require "spec_helper"

module TicTacToe
  describe Board do
    
    context "#initialize" do
      it "should initialize the board with a grid" do
        expect {Board.new(grid: "grid")}.to_not raise_error 
      end

      it "should set the grid with three rows by default" do
        board = Board.new
        expect(board.grid).to have(3).things
      end

      it "should create three things in each row by default" do
        board = Board.new
        board.grid.each do |row|
          expect(row).to have(3).things
        end
      end
    end

    context "#grid" do
      it "should return the instance variable" do
        board = Board.new(grid: "Hello")
        expect(board.grid).to eq "Hello"
      end
    end   

    context "#get_cell" do
      it "should return the cell based on the (x,y) cordinate" do
        grid = [["","",""],["","","hello"], ["","",""]]
        board = Board.new(grid: grid)
        expect(board.get_cell(2,1)).to eq "hello"  
      end
    end

    context "#set_cell" do
      it "should update the value of the cell object at a (x,y) coordinate" do
        Cat = Struct.new(:value)
        grid = [[Cat.new("cool"),"",""],["","",""],["","",""]]
        board = Board.new(grid: grid)
        board.set_cell(0,0, "meow")
        expect(board.get_cell(0,0).value).to eq "meow"  
      end
    end 

    TestCell = Struct.new(:value)
    let(:x_cell) {TestCell.new("X")}
    let(:y_cell) {TestCell.new("Y")}
    let(:empty)  {TestCell.new}

    context "#game_over" do
      it "should return :winner if winer? is true" do
        board = Board.new
        board.stub(:winner?) {true}
        expect(board.game_over).to eq :winner
      end

      it "should return :draw if winner? is false and draw? is true" do
        board = Board.new
        board.stub(:winner?) {false}
        board.stub(:draw?)   {true}
        expect(board.game_over).to eq :draw
      end
      
      it "should return false if winner? is false and draw? is false" do
        board = Board.new
        board.stub(:winner?) {false}
        board.stub(:draw?)   {false} 
        expect(board.game_over).to be_false     
      end    

      it "should return :winner when row has objects with values that are all the same" do
        grid = [
          [x_cell, x_cell, x_cell],
          [y_cell, x_cell, y_cell],
          [y_cell, y_cell, empty]
        ]
        board = Board.new(grid: grid)
        expect(board.game_over).to eq :winner
      end

      it "should return :winner when column has objects with values that are all the same" do
        grid = [
          [x_cell, x_cell, empty],
          [y_cell, x_cell, y_cell],
          [y_cell, x_cell, empty]
        ]
        board = Board.new(grid: grid)
        expect(board.game_over).to eq :winner  
      end

      it "should return :winner when diagonal has objects with values that are all the same" do
        grid = [
          [x_cell, y_cell, x_cell],
          [y_cell, x_cell, y_cell],
          [y_cell, y_cell, x_cell]
        ]
        board = Board.new(grid: grid)
        expect(board.game_over).to eq :winner
      end

      it "should return :draw when all spaces on board are taken" do
        grid = [
          [x_cell, y_cell, x_cell],
          [y_cell, x_cell, y_cell],
          [y_cell, x_cell, y_cell]
        ]
        board = Board.new(grid: grid)
        expect(board.game_over).to eq :draw
      end

      it "should return false when there is no winner or draw" do
        grid = [
          [x_cell, empty, empty],
          [y_cell, empty, empty],
          [y_cell, empty, empty]
        ]
        board = Board.new(grid: grid)
        expect(board.game_over).to be_false
      end
    end
  end














end