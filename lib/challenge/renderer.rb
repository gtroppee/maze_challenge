class Renderer
  def self.separator
    puts '='*100
  end

  def self.new_line
    puts "\n"
  end

  def self.result(message)
    new_line
    new_line
    separator
    new_line

    puts message
    
    new_line
    separator
    new_line
  end
end