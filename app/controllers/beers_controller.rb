class BeersController < ApplicationController
  #this is how you skip before actions in rails
  #skip_before_action :authenticate_user!, only: [:index]

  before_action :set_beer, except: [:index, :new, :create]

  def index
    # OLD WAY
    #@beers = Beer.all
    flash[:notice] = 'Welcome to the beer garden!'
    @beers = current_user.beers
  end

  def show
  end

  def new
  end

  def create
    @beer = Beer.new(beer_params)
    if @beer.save
      redirect_to @beer, notice: 'Beer created successfully!'
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def set_beer
      # OLD NON SCOPED WAY
      # @beer = Beer.find(params[:id])

      @beer = current_user.beers.find(params[:id])
    end

    def beer_params
      params.require(:beer).permit(:name, :style, :ibu, :alcohol)
    end
end
