class Operations

  # Add two to a given number
  # @param [Integer] a number
  # @return [Integer] the (@param + 2)
  def self.add_two(number)
    number + 2
  end

  # Multiply a given number by two
  # @param [Integer] a number
  # @return [Integer] the (@param * 2)
  def self.multiply_by_two(number)
    number * 2
  end

  # Divide a given number by two
  # @param [Integer] a number
  # @return [Integer] the (@param / 2)
  def self.divide_by_two(number)
    number / 2
  end

  # Add two to a given number
  # @return [Array] the available operations for solving the maze
  def self.list
    [
      :add_two,
      :multiply_by_two, 
      :divide_by_two
    ]
  end
end