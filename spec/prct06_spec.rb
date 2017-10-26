require "spec_helper"
require "/home/usuario/LPP/prct06/lib/prct06/alimentos.rb"

RSpec.describe Prct06 do
  it "has a version number" do
    expect(Prct06::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end
end
