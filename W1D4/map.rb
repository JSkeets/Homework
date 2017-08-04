class Map

  def initialize
    @array = []
  end

  def assign(key, value)
    if self.lookup(key) != nil 
      self.remove(key)
      @array << [key,value]
    else
      @array << [key,value]
    end
  end

  def lookup(key)
    @array.each do |el|
      return el if el[0] == key
    end
  end

  def remove(key)
    @array.each do |el|
      if el[0] == key
        @array.delete(el)
      end
    end
  end

  def show
    @array
  end

end
b = Map.new
b.assign("f","a")
b.assign("v","c")
b.assign("f","o")
