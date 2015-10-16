class Maze

  def initialize(source:, target:)
    @source, @target = source, target
    @starting_paths = [Path.new(@source, @target)]
  end

  def solve
    generation = Generation.new(@starting_paths)

    while !generation.target_reached?
      generation = generation.next
    end

    message = "Maze description : going from #{@source} to #{@target}\n"
    message << generation.render
    Renderer.result(message)
  end
end