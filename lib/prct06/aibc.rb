def aibc_imperativa
  i = 0
  r = []
  while i < g.size
    index = 1
    s = []
    while index < g[i].size
      if g[i][index] < g[i][0]
        s << 0.0
      else
        s << (((g[i][index] - g[i][0]) + (g[i][index-1] - g[i][0]))/2)*5
      end
      index = index + 1
    end
    r << s
    i = i + 1
  end

  suma = []
  j = 0
  while j < g.size
    k = 0
    s = 0
    while k < r[j].size
      s = s + r[j][k]
      k = k + 1
    end
    suma << s
    j = j + 1
  end
  suma
end

def aibc_funcional

end
