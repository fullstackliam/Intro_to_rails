class WeirdAnimalComboController < ApplicationController
  def index
    @combos = Combo.all
  end

  def show
  end

  def new
  end
end
