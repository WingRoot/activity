#encoding: utf-8

class AtividadesController < ApplicationController

  def create
  	atividade = Atividade.new params[:atividade]

  	if atividade.save
  		flash[:notice] = "Sua atividade foi cadastrada."
  	end

  	redirect_to root_path
  end

  def edit
  	@atividade = Atividade.find params[:id]
  end

  def update
  	atividade = Atividade.find params[:id]
  	if atividade.update_attributes params[:atividade]
  		flash[:notice] = "A atividade foi atualizada."
  	end

  	redirect_to root_path
  end

  def delete
  	@atividade = Atividade.find(params[:id])
  end

  def destroy
  	atividade = Atividade.find(params[:id])
  	if atividade.destroy
  		flash[:notice] = "A atividade foi excluida."
  	end

  	redirect_to root_path
  end

end
