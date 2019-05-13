module Game
  class Play
    
    class Start
  
      def initialize(setup_board, show_board)
        @setup_board = setup_board
        @show_board  = show_board
      end
    
      def call
        board = @setup_board.()
    
        @show_board.(board)
        
        board
      end
    
    end
    
  end
end
