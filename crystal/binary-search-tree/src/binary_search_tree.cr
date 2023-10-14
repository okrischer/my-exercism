class Node(T)

  getter value : T
  getter left  : Node(T) | Nil = nil
  getter right : Node(T) | Nil = nil

  def initialize(@value : T)
  end

  def insert(x : T)
    if x <= @value
      node = @left
      if node.nil?
        @left = Node(T).new x
      else
        node.insert x
      end
    else
      node = @right
      if node.nil?
        @right = Node(T).new x
      else
        node.insert x
      end
    end
  end

  def sort
    l = @left
    r = @right
    (l.nil? ? [] of T : l.sort) + [@value] + (r.nil? ? [] of T : r.sort)
  end

end
