class Stack
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
    @array.shift
  end

  def show
    # return a copy of the stack
     p @array
  end
end

b = Stack.new
b.add(2)

b.show
