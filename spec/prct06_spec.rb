require "spec_helper"
require "/home/usuario/LPP/prct06/lib/prct06/alimentos.rb"
require "/home/usuario/LPP/prct06/lib/prct06/list.rb"
require "/home/usuario/LPP/prct06/lib/prct06/aibc.rb"
require "/home/usuario/LPP/prct06/lib/prct06/sort.rb"
require 'benchmark'

RSpec.describe Prct06 do
  context "Practica06" do
    it "has a version number" do
      expect(Prct06::VERSION).not_to be nil
    end
    it "can be initialized" do
      expect(Alimentos.new("nombre", 1, 2, 3).class).to eq(Alimentos)
    end
    it "can be initialized and has a name" do
      expect(Alimentos.new("nombre", 1, 1, 1).name).to eq("nombre")
    end
    it "Existe un metodo para obtener la cantidad de proteınas de un alimento" do
      expect(Alimentos.new("nombre", 10, 1, 1).proteinas).to eq(10)
    end
    it "Existe un metodo para obtener la cantidad de glucidos de un alimento" do
      expect(Alimentos.new("nombre", 1, 10, 1).glucidos).to eq(10)
    end
    it "Existe un metodo para obtener de grasas de un alimento" do
      expect(Alimentos.new("nombre", 1, 1, 10).lipidos).to eq(10)
    end
    it "Existe un metodo para obtener el alimento formateado" do
      expect(Alimentos.new("Huevo frito", 14.1, 0.0, 19.5).format).to eq("(Alimento: Huevo frito, proteinas: 14.1, glucidos: 0.0, lipidos: 19.5)")
    end
    it "Existe un metodo para obtener el valor energetico de un alimento" do
      expect(Alimentos.new("Huevo frito", 14.1, 0.0, 19.5).energy).to eq(231.9)
    end
  end

#here the new tests are starting
  context "List" do
    a = Node.new(1, nil, nil)
    c = Node.new(3, nil, nil)
    b = Node.new(2, c, a)
    a.nex = b
    c.prev = b
    list1 = List.new()
    list2 = List.new()
    list2.add(1)
    list2.add(2) 

    it "It's possible to generate a Node with a value" do
      expect(a.value).to eq(1)
    end
    it "The Node has a previus" do
      expect(b[:prev]).to eq(a)
    end
    it "The node has a next" do
      expect(b[:nex]).to eq(c)
    end
    it "Create list and it has a head" do
      expect(List.new().head).to eq(nil)
    end
    it "List has a tail" do
      expect(List.new().tail).to eq(nil)
    end
    it "You can add a value to the list" do
      expect(list1.add(1).head).to eq(Node.new(1, nil, nil))
    end
    it "You can add multiple elements into the list" do
      expect(list2.add(3).tail).to eq(c)
    end
    it "Get and delete the first element" do
      expect(list2.shift.value).to eq(a.value)
    end
    it "Get and delete the last element" do
      expect(list2.pop.value).to eq(c.value)
    end
  end

  context HuevosLacteosHelados do
    it "Makes hierarchy-tests with three Elements" do
      hf = HuevosLacteosHelados.new("Huevo frito", 14.1, 0.0, 19.5)
      lv = HuevosLacteosHelados.new("Leche vaca", 3.3, 4.8, 3.2)
      yo = HuevosLacteosHelados.new("Yogurt", 3.8, 4.9, 3.8)

      expect(hf.class).to eq(HuevosLacteosHelados)
      expect(lv.instance_of?(HuevosLacteosHelados)).to eq(true)
      expect(yo.class.superclass).to eq(Alimentos)
      expect(yo.is_a?(Object)).to eq(true)
    end
  end

  context CarnesDerivados do
    it "Makes hierarchy-tests with three Elements" do
      ce = CarnesDerivados.new("Cerdo",              21.5,        0.0,         6.3)
      te = CarnesDerivados.new("Ternera",            21.1,        0.0,         3.1)
      po = CarnesDerivados.new("Pollo",              20.6,        0.0,         5.6)

      expect(ce.class).to eq(CarnesDerivados)
      expect(te.instance_of?(CarnesDerivados)).to eq(true)
      expect(po.class.superclass).to eq(Alimentos)
      expect(ce.is_a?(Object)).to eq(true)
    end
  end

  context PescadosMariscos do
    it "Makes hierarchy-tests with three Elements" do
      ba = PescadosMariscos.new("Bacalao",            17.7,        0.0,         0.4)
      at = PescadosMariscos.new("Atún",               21.5,        0.0,        15.5)
      sa = PescadosMariscos.new("Salmón",             19.9,        0.0,        13.6)

      expect(at.class).to eq(PescadosMariscos)
      expect(ba.instance_of?(PescadosMariscos)).to eq(true)
      expect(sa.class.superclass).to eq(Alimentos)
      expect(at.is_a?(Object)).to eq(true)
    end
  end


  context AlimentosGrasos do
    it "Makes hierarchy-tests with three Elements" do
      ao = AlimentosGrasos.new("Aceite de oliva",     0.0,        0.2,        99.6)
      ma = AlimentosGrasos.new("Mantequilla",         0.7,        0.0,        83.2)
      ch = AlimentosGrasos.new("Chocolate",           5.3,       47.0,        30.0)

      expect(ao.class).to eq(AlimentosGrasos)
      expect(ma.instance_of?(AlimentosGrasos)).to eq(true)
      expect(ch.class.superclass).to eq(Alimentos)
      expect(ch.is_a?(Object)).to eq(true)
    end
  end

  context AlimentosCarbohidratos do
    it "Makes hierarchy-tests with three Elements" do
      az = AlimentosCarbohidratos.new("Azúcar",              0.0,       99.8,         0.0)
      ar = AlimentosCarbohidratos.new("Arroz",               6.8,       77.7,         0.6)
      le = AlimentosCarbohidratos.new("Lentejas",           23.5,       52.0,         1.4)
      pa = AlimentosCarbohidratos.new("Papas",               2.0,       15.4,         0.1)

      expect(pa.class).to eq(AlimentosCarbohidratos)
      expect(ar.instance_of?(AlimentosCarbohidratos)).to eq(true)
      expect(le.class.superclass).to eq(Alimentos)
      expect(az.is_a?(Object)).to eq(true)
    end
  end

  context VerdurasHortalizas do
    it "Makes hierarchy-tests with three Elements" do
      to = VerdurasHortalizas.new("Tomate",              1.0,        3.5,         0.2)
      ce = VerdurasHortalizas.new("Cebolla",             1.3,        5.8,         0.3)
      ca = VerdurasHortalizas.new("Calabaza",            1.1,        4.8,         0.1)

      expect(ce.class).to eq(VerdurasHortalizas)
      expect(ce.instance_of?(VerdurasHortalizas)).to eq(true)
      expect(to.class.superclass).to eq(Alimentos)
      expect(ca.is_a?(Object)).to eq(true)
    end
  end

  context Frutas do
    it "Makes hierarchy-tests with three Elements" do
      ma = Frutas.new("Manzana",             0.3,       12.4,         0.4)
      pl = Frutas.new("Plátanos",            1.2,       21.4,         0.2)
      pe = Frutas.new("Pera",                0.5,       12.7,         0.3)

      expect(pl.class).to eq(Frutas)
      expect(pe.instance_of?(Frutas)).to eq(true)
      expect(pl.class.superclass).to eq(Alimentos)
      expect(ma.is_a?(Object)).to eq(true)
    end
  end

  context "Different types of foods" do
    it "should not be the same class for foods of different categories" do
      pl = Frutas.new("Plátanos",            1.2,       21.4,         0.2)
      ao = AlimentosGrasos.new("Aceite de oliva",     0.0,        0.2,        99.6)

      expect(pl.class).not_to eq(ao.class)
    end

    it "should be the same superclass for foods of different categories" do
      pl = Frutas.new("Plátanos",            1.2,       21.4,         0.2)
      ao = AlimentosGrasos.new("Aceite de oliva",     0.0,        0.2,        99.6)

      expect(pl.class.superclass).to eq(ao.class.superclass)
    end
  end

  context "alimentos comparable" do
    it "test <=> and between?" do
      a1 = Alimentos.new("Alimento1", 10, 10, 10)
      a2 = Alimentos.new("Alimento2", 1, 1, 1)

      expect(a1 < a2).to eq(false)
      expect(a1 > a2).to eq(true)
      expect(a1 == a2).to eq(false)
      expect(a2 == a2).to eq(true)
      expect(Alimentos.new("Alimento3", 5.3, 6.6, 2.5).between?(a2, a1)).to eq(true)
      expect(Alimentos.new("Alimento4", 3.6, 6.6, 20.5).between?(a2, a1)).to eq(false)
    end
  end
 
  context "list enumerable" do
    it "tests with all?, count, any? and include?" do
     list = List.new()
     list.add(1)
     list.add(2) 
     expect(list.all?).to eq(true)
     expect(list.count).to eq(2)
     expect(list.all?{|node| node.value >= 1}).to eq(true)
     expect(list.any?{|node| node.value >= 2}).to eq(true)
     expect(list.any?{|node| node.value >= 5}).to eq(false)
     expect(list.include?(333)).to eq(false)
     expect(list.include?(1)).to eq(true)
    end
  end

  context "Practica08" do
    it "imperative code works" do
      manzana1=[6.7, 6.5, 6.8, 6.9, 7.0, 7.1, 6.9, 6.9, 6.9, 6.7, 6.9, 7.3, 7.0, 7.0, 7.2, 7.1, 6.8, 7.2, 7.3, 7.0, 6.8, 6.7, 6.8, 6.7, 6.9]
      manzana2=[4.6, 4.8, 5.3, 5.6, 6.1, 6.5, 6.6, 7.0, 7.0, 6.8, 6.4, 6.3, 6.1, 6.1, 6.2, 6.0, 6.1, 6.1, 6.2, 6.3, 6.4, 6.1, 6.1, 5.7, 5.9]
      manzana=[manzana1, manzana2]
      glucosa1=[4.9, 5.3, 5.9, 6.7, 7.2, 7.6, 8.0, 8.2, 8.2, 8.4, 8.3, 8.3, 8.0, 7.5, 7.1, 6.8, 6.8, 6.9, 6.8, 6.3, 6.2, 6.3, 6.2, 6.3, 6.1]
      glucosa2=[6.3, 5.4, 5.6, 5.7, 6.5, 7.4, 7.9, 7.4, 7.7, 7.9, 7.9, 7.8, 7.8, 7.8, 8.0, 8.5, 9.4, 10.8, 10.5, 9.1, 8.9, 8.3, 7.7, 7.6, 7.5]
      glucosa=[glucosa1, glucosa2]
      expect(aibc_imperativa([manzana1])).to eq([27.999999999999993])
      expect(aibc_imperativa([glucosa1])).to eq([255.99999999999997])
      expect(aibc_imperativa([manzana2])).to eq([183.25])
      expect(aibc_imperativa([glucosa2])).to eq([196.00000000000003])
      expect(ig(aibc_imperativa(manzana), aibc_imperativa(glucosa))).to eq(52.21619897959183)
    end
    it "aibc_funcional" do
      manzana1=[6.7, 6.5, 6.8, 6.9, 7.0, 7.1, 6.9, 6.9, 6.9, 6.7, 6.9, 7.3, 7.0, 7.0, 7.2, 7.1, 6.8, 7.2, 7.3, 7.0, 6.8, 6.7, 6.8, 6.7, 6.9]
      manzana2=[4.6, 4.8, 5.3, 5.6, 6.1, 6.5, 6.6, 7.0, 7.0, 6.8, 6.4, 6.3, 6.1, 6.1, 6.2, 6.0, 6.1, 6.1, 6.2, 6.3, 6.4, 6.1, 6.1, 5.7, 5.9]
      glucosa1=[4.9, 5.3, 5.9, 6.7, 7.2, 7.6, 8.0, 8.2, 8.2, 8.4, 8.3, 8.3, 8.0, 7.5, 7.1, 6.8, 6.8, 6.9, 6.8, 6.3, 6.2, 6.3, 6.2, 6.3, 6.1]
      glucosa2=[6.3, 5.4, 5.6, 5.7, 6.5, 7.4, 7.9, 7.4, 7.7, 7.9, 7.9, 7.8, 7.8, 7.8, 8.0, 8.5, 9.4, 10.8, 10.5, 9.1, 8.9, 8.3, 7.7, 7.6, 7.5]
      manzana=[manzana1, manzana2]
      glucosa=[glucosa1, glucosa2]
      measure(manzana1, glucosa1)
      measure(manzana2, glucosa2)
      expect(aibc_funcional).to eq(ig(aibc_imperativa(manzana), aibc_imperativa(glucosa)))
    end
  end

  context "Practica10" do
    before(:all) do
      @tabla = [
        HuevosLacteosHelados.new("Huevo frito", 14.1, 0.0, 19.5),
        HuevosLacteosHelados.new("Leche vaca", 3.3, 4.8, 3.2),
        HuevosLacteosHelados.new("Yogurt", 3.8, 4.9, 3.8),
        CarnesDerivados.new("Cerdo", 21.5, 0.0, 6.3),
        CarnesDerivados.new("Ternera", 21.1, 0.0, 3.1),
        CarnesDerivados.new("Pollo", 20.6, 0.0, 5.6),
        PescadosMariscos.new("Bacalao", 17.7, 0.0, 0.4),
        PescadosMariscos.new("Atún", 21.5, 0.0, 15.5),
        PescadosMariscos.new("Salmón", 19.9, 0.0, 13.6),
        AlimentosGrasos.new("Aceite de oliva", 0.0, 0.2, 99.6),
        AlimentosGrasos.new("Mantequilla", 0.7, 0.0, 83.2),
        AlimentosGrasos.new("Chocolate", 5.3, 47.0, 30.0),
        AlimentosCarbohidratos.new("Azúcar", 0.0, 99.8, 0.0),
        AlimentosCarbohidratos.new("Arroz", 6.8, 77.7, 0.6),
        AlimentosCarbohidratos.new("Lentejas", 23.5, 52.0, 1.4),
        AlimentosCarbohidratos.new("Papas", 2.0, 15.4, 0.1),
        VerdurasHortalizas.new("Tomate", 1.0, 3.5, 0.2),
        VerdurasHortalizas.new("Cebolla", 1.3, 5.8, 0.3),
        VerdurasHortalizas.new("Calabaza", 1.1, 4.8, 0.1),
        Frutas.new("Manzana", 0.3, 12.4, 0.4),
        Frutas.new("Plátanos", 1.2, 21.4, 0.2),
        Frutas.new("Pera", 0.5, 12.7, 0.3)
        ]

    end

    it "sort with for" do
	expect(sort_for(@tabla)).to eq(@tabla.sort)
    end

    it "sort with each" do
	expect(sort_each(@tabla)).to eq(@tabla.sort)
    end

    it "sort with sort" do
	expect(sort_sort(@tabla)).to eq(@tabla.sort)
    end
    it "benchmark" do
	Benchmark.bm do |x|
	x.report("for:")   {sort_for(@tabla)}
	x.report("each:") {sort_each(@tabla)}
	x.report("sort:")  {sort_sort(@tabla)}
    end
end
  end
end
