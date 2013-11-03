class ExercicioController < ApplicationController
 
  def principal
  	@atividades = Atividade.all
  end

end
