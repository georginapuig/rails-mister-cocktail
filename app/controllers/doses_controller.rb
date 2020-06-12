class DosesController < ApplicationController
  # GET "cocktails/42/doses/new"
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  # POST "cocktails/42/doses"
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail

    if @dose.save
      # /cocktails/:id
      redirect_to @cocktail
    else
      render :new
    end
  end

  # DELETE "doses/25"
  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end
  
  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
