class Generation
  attr_accessor :paths

  # Constructor
  # @param [Array] the paths belonging to this generation
  # @param [Integer] the count of the generations that have been created so far (defaults to 1)
  def initialize(paths, generations_count: 1)
    @paths = paths.flatten
    @generations_count = generations_count
  end

  # Generates the next generation of paths
  def next
    next_paths = @paths.flat_map(&:next_paths)
    Generation.new(next_paths, generations_count: @generations_count + 1)
  end

  # Retrieve a list of all the sucessful paths for this generation
  # @return [Array] the sucessful paths
  def successful_paths
    @successful_paths ||= @paths.select(&:target_reached?)
  end

  def target_reached?
    successful_paths.any?
  end

  def to_s
    message = "Maze solved in #{@generations_count} generations, and the quickest routes are \n"
    successful_paths.each do |path|
      message << "- #{path} \n"
    end
    message
  end
end