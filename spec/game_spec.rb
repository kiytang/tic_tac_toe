module TicTacToe
  describe Game do

    let (:bob)   {Player.new({color: "X", name: "bob"})}
    let (:frank) {Player.new({color: "O", name: "frank"})}

    context "#initialize" do
      it "randomly selects a current_player" do
        Array.any_instance.stub(:shuffle) {[frank, bob]}
        game = Game.new([bob, frank])
        expect(game.current_player).to eq frank
      end
      
    end
end