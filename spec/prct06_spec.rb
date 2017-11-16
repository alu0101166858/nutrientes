require "spec_helper"
require "/home/usuario/LPP/prct06/lib/prct06/alimentos.rb"
require "/home/usuario/LPP/prct06/lib/prct06/list.rb"

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
    a.next = b
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
      expect(b[:next]).to eq(c)
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
    it "first test" do
      a1 = Alimentos.new("Alimento1", 10, 10, 10)
      a2 = Alimentos.new("Alimento2", 1, 1, 1)

      expect(a1 < a2).to eq(false)
      expect(a1 > a2).to eq(true)
      expect(a1 == a2).to eq(false)
      expect(a2 == a2).to eq(true)
    end
  end

end
