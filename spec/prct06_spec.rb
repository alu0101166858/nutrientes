require "spec_helper"
require "/home/usuario/LPP/prct06/lib/prct06/alimentos.rb"

RSpec.describe Prct06 do
  it "has a version number" do
    expect(Prct06::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
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
