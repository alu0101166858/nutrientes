class Alimentos
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
    @proteinas * 4 + @glucidos * 4 + @lipidos *9
  end
end
