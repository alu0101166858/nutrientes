class Alimentos
  include Comparable
  def <=>(anOther)
    energy <=> anOther.energy
  end

  def initialize(nombre, proteinas, glucidos,  lipidos)
    @nombre = nombre
    @proteinas = proteinas
    @glucidos = glucidos
    @lipidos = lipidos
  end
  def name
    @nombre
  end
  def proteinas
    @proteinas
  end
  def glucidos
    @glucidos
  end
  def lipidos
    @lipidos
  end
  def format
    "(Alimento: #{@nombre}, proteinas: #{@proteinas}, glucidos: #{@glucidos}, lipidos: #{@lipidos})"
  end
  def energy
    @energy = (@proteinas * 4 + @glucidos * 4 + @lipidos *9).round(1)
  end
  def to_s
    "#{@nombre}(#{@energy})"
  end
end

#jerarquía de clases que permita clasificar los alimentos por grupos
class HuevosLacteosHelados < Alimentos
end
class CarnesDerivados < Alimentos
end
class PescadosMariscos < Alimentos
end
class AlimentosGrasos < Alimentos
end
class AlimentosCarbohidratos < Alimentos
end
class VerdurasHortalizas < Alimentos
end
class Frutas < Alimentos
end
class Bebidas < Alimentos
end

