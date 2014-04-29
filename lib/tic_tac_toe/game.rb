module TicTacToe
  class Game
    attr_reader :players, :board, :current_player, :other_player
    def initialize(players, board=Board.new)
      @player = player
      @board  = board     
    end
  end
  
end