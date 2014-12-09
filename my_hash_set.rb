class MyHashSet
  attr_accessor :store

  def initialize
    @store = {}
  end

  def insert(el)
    @store[el] = true
  end

  def include?(el)
    @store.has_key?(el)
  end

  def delete(el)
    if @store.include?(el)
      @store.delete(el)
      return true
    else
      return false
    end
  end

  def to_a
    @store.keys
  end

  def union(set2)
    @store.merge(set2.store)
  end

  def intersect(set2)
    output_set = {}
    @store.each do |member, value|
      if set2.include?(member)
        output_set[member] = true
      end
    end
    output_set
  end

  def minus(set2)
    output_set = {}
    @store.each do |member, value|
      if !set2.include?(member)
        output_set[member] = true
      end
    end
    output_set
  end
end
