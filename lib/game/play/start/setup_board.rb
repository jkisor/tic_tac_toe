require "./lib/board"
module Game
  class Play
    class Start
    
      class SetupBoard

        def call
          Board.new("-"*9)
        end

      end
      
    end
  end
end