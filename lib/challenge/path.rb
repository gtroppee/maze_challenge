class Path
  attr_reader :current_value, 
              :target_value, 
              :operation_history

  def initialize(current_value, target_value, operation_history: [])
    @current_value     = current_value
    @target_value      = target_value
    @operation_history = operation_history
  end

  def target_reached?
    @current_value == @target_value
  end

  def to_s
    "#{@operation_history.join(' -> ')}"
  end

  def next_paths
    Operations.list.map do |operation|
      new_value = Operations.send(operation, @current_value)
      operation_history = @operation_history + [operation]
      Path.new(new_value, @target_value, operation_history: operation_history)
    end
  end
end