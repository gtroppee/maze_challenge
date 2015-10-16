class Generation
  def initialize(paths, generations_count: 1)
    @paths = paths.flatten
    @generations_count = generations_count
  end

  def next
    next_paths = @paths.flat_map(&:next_paths)
    Generation.new(next_paths, generations_count: @generations_count + 1)
  end

  def render
    message = "Maze solved in #{@generations_count} generations, and the quickest routes are \n"
    successful_paths.each do |path|
      message << "- #{path} \n"
    end
    message
  end

  def target_reached?
    @paths.any?(&:target_reached?)
  end

  def successful_paths
    @paths.select(&:target_reached?)
  end
end