#encoding: utf8
require "spec_helper"
require "capybara/rails"
requite "capybara/rspec"

describe Array do 
	it "deveria adicionar um elemento no array" do 
		array = []
		array << 1
		expect(array).to have(1).item
	end
end

context "Cadastro de atividade" do

	context "Preenchendo formulario corretamente" do

	end

end