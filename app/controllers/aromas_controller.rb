class AromasController < ApplicationController
  def index
    @aromas = Aroma.all
  end

  def result
    @aroma = Aroma.find(params[:id])
  end
end
