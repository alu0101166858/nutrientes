def sort_for(input)
  a = input.dup
  n = a.size - 1
  for i in 0..n
    index_min = i
    for j in (i+1)..n do
      index_min = j if a[j] < a[index_min]
    end
    a[i], a[index_min] = a[index_min], a[i] if index_min != i
  end
  return a
end

def sort_each(input)
  b = input.dup
  b.each do |i|
    min = i
    b.last(b.size-b.index(i)).each do |j|
      min = j if j < min
    end
    index_i=b.index(i)
    index_min=b.index(min)
    b[index_i], b[index_min] = b[index_min], b[index_i] if index_min != index_i
  end
  return b
end

def sort_sort(input)
  c = input.dup
  c = c.sort
  return c
end
