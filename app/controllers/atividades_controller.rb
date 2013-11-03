#encoding: utf-8

class AtividadesController < ApplicationController

  def create 
  	atividade = Atividade.new params[:atividade]

  	if atividade.save
  		flash[:notice] = "Sua atividade foi cadastrada."
  	end

  	redirect_to root_path
  end

end
