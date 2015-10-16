class Renderer
  def self.separator
    puts '='*100
  end

  def self.new_line
    puts "\n"
  end

  def self.result(message)
    Renderer.new_line
    Renderer.new_line
    Renderer.separator
    Renderer.new_line

    puts message
    
    Renderer.new_line
    Renderer.separator
    Renderer.new_line
  end
end