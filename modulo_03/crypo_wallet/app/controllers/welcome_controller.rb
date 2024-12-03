class WelcomeController < ApplicationController
  def index
    @nome = params[:nome]
    @curso = "Rails"
  end
end
