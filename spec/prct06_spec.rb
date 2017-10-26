require "spec_helper"
require "/home/usuario/LPP/prct06/lib/prct06/alimentos.rb"

RSpec.describe Prct06 do
  it "has a version number" do
    expect(Prct06::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end

  it "can be initialized and has a name" do
    expect("nombre").to eq(Alimentos.new("nombre", 1, 1, 1).name)
  end

  it "Existe un m´etodo para obtener la cantidad de prote´ınas de un alimento" do
    expect(10).to eq(Alimentos.new("nombre", 10, 1, 1).proteinas)
  end

  it "Existe un m´etodo para obtener la cantidad de gl´ucidos de un alimento" do
    expect(10).to eq(Alimentos.new("nombre", 1, 10, 1).glucidos)
  end

  it "Existe un m´etodo para obtener de grasas de un alimento" do
    expect(10).to eq(Alimentos.new("nombre", 1, 1, 10).lipidos)
  end


end
