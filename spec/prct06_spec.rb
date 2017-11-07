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

    it "It's possible to generate a Node with a value" do
      expect(a.value).to eq(1)
    end
    it "The Node has a previus" do
      expect(b[:prev]).to eq(a)
    end
    it "The node has a next" do
      expect(b[:next]).to eq(c)
    end


  end
end
