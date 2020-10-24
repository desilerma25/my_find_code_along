require 'pry'

def my_find(collection) # def method that takes an arg.
    i = 0 # begin counter at 0
    while i < collection.length # only go up to the length of the array
      if yield(collection[i]) # if block true, return arg. passed into yield (the element)
        return collection[i]
      end
      i = i + 1 # otherwise cont. to the next element
    end
  end


  # refactor by putting the if state. all on one line using a statement modifier
  def my_find(collection)
    i = 0
    while i < collection.length
      return collection[i] if yield(collection[i])
      i = i + 1
    end
  end 
  