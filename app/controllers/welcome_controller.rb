class WelcomeController < ApplicationController

  def index
    @nomeLider = params[:nome]
    @curso = params[:curso]
  end

  def new
    puts "a action new foi chamada"
  end

  def ola
    puts "secreto"
  end



end
