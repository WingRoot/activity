#encoding: utf-8
require "spec_helper"
require "capybara/rails"
require "capybara/rspec"

describe Array do 
	it "deveria adicionar um elemento no array" do 
		array = []
		array << 1
		expect(array).to have(1).item
	end

	it "deveria criar e exibir o novo atividade", js: true do
		#autentica
		#visit "/"
	end
end

describe "Cadastro de atividade" do

	context "Preenchendo formulario corretamente" do
		it "deveria criar e exibir o novo atividade", js: true do
			# ... especificacao
			visit "/"

			fill_in "Tempo", with: "1.0"
			fill_in "Tipo", with: "Natacao"
			fill_in "Data", with: "03/11/2013"
			click_button "Create Atividade"

			expect(page).to have_content "1.0"
			expect(page).to have_content "Natacao"
			expect(page).to have_content "03/11/2013"
		end
	end
end
