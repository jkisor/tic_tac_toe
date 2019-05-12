class Terminal
  class Clear
    
    def self.call
      system("clear")
    end

  end

  class Print
    
    def self.call(text)
      puts text
    end

  end

  class GetInput
    
    def self.call
      gets.chomp.to_i
    end

  end

end