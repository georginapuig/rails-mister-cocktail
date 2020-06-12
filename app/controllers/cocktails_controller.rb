class CocktailsController < ApplicationController
  # GET "cocktails"
  def index
    @cocktails = Cocktail.all
  end

  # GET "cocktails/42"
  def show
    @cocktail = Cocktail.find(params[:id])
  end

  # GET "cocktails/new"
  def new
    @cocktail = Cocktail.new
  end

  # POST "cocktails"
  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to @cocktail
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
