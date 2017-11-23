def aibc_imperativa(g)
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

def ig(aibc_alimento, aibc_glucosa)
  ig_alimento = (((aibc_alimento[0] /aibc_glucosa[0])*100) + (((aibc_alimento[1] /aibc_glucosa[1]))*100))/2
end

#def aibc_funcional_fisttry(g)
#g.each...
#  aibc=
#  g=g.first()
#  s = g.each_cons(2).to_a
#  s= s.collect{|a| (((a[1] - g[0]) + (a[0] - g[0]))/2)*5}
#  y = g.zip(s)
#  z = y.collect{|v| (0.0 if v[0] < g[0]) ||v[1]}
#  z = z.find_all{|x| x != nil}
#  return [z.reduce(:+)]
#end


$concentracionThis = []
$concentracionGlucosa = []
def aibc_funcional
  aibc = lambda {|list| list.drop(1).zip(list.first(list.count - 1)).map {|i| i[0] < list.first ? 0 : (((i[0] - list.first) + (i[1] - list.first))/2) * 5}.reduce(:+)}
  igIndAll = $concentracionThis.zip($concentracionGlucosa).map{|dataPair| [aibc.call(dataPair[0]), aibc.call(dataPair[1])]}.map{|aibcPair| (aibcPair[0] / aibcPair[1]) * 100}
  igIndAll.reduce(:+)/igIndAll.count
end

def addMeasurement(alimento, glucosa)
  $concentracionThis << alimento
  $concentracionGlucosa << glucosa
end
