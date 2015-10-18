class Maze

  # Constructor
  # @param [Integer] the starting point for this Maze instance
  # @param [Integer] the target for this Maze instance
  def initialize(source:, target:)
    @source, @target = source, target
    @starting_paths = [Path.new(@source, @target)]
  end

  # Initiate the looping process to solve the problem :
  # 1- we manually create the first generation with the first path
  # 2- we automatically create generations of paths until the solution is found
  # 3- we format and render the result
  def solve
    # 1
    generation = Generation.new(@starting_paths)

    # 2
    while !generation.target_reached?
      generation = generation.next
    end

    # 3
    message = "Maze description : going from #{@source} to #{@target}\n"
    message << generation.to_s
    Renderer.result(message)
  end
end