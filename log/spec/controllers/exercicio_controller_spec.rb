require 'spec_helper'

describe ExercicioController do

  describe "GET 'principal'" do
    it "returns http success" do
      get 'principal'
      response.should be_success
    end
  end

end
