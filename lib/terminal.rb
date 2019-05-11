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

end