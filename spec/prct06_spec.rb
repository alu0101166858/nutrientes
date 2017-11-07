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
  context "Practica07" do
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
end
