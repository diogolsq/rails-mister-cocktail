class CocktailsController < ApplicationController

  before_action :find_cocktail, only: [:show, :edit, :destroy]

  def index
    @cocktails = Cocktail.all
    if params[:search]
      if params[:search][:query]
        @cocktailresult = Cocktail.find_by(name: params[:search][:query])
        redirect_to cocktail_path(@cocktailresult)
      end
    end
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktails_params)
    @cocktail.save
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktails_params
    params.require(:cocktail).permit(:name, :description)
  end
end
