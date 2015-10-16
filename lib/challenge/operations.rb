class Operations
  def self.add_two(number)
    number + 2
  end

  def self.multiply_by_two(number)
    number * 2
  end

  def self.divide_by_two(number)
    number / 2
  end

  def self.list
    [
      :add_two,
      :multiply_by_two, 
      :divide_by_two
    ]
  end
end