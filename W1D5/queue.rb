class Queue

  def initialize
    # create ivar to store stack here!
    @array = []
  end

  def add(el)
    # adds an element to the stack
    @array.unshift(el)
  end

  def remove
    # removes one element from the stack
    @array.pop
  end

  def show
    # return a copy of the stack
     p @array
  end
end
