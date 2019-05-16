module Game
  class Play
    class End

      def self.build
        new(Terminal::Print)
      end

      def initialize(printer)
        @printer = printer
      end

      def call
        @printer.("Game over. Thanks for playing.")
      end

    end

  end

end