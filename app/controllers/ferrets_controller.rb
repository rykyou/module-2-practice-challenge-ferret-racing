class FerretsController < ApplicationController

  def index
    @ferrets = Ferret.all
  end

  def show
    @ferret = Ferret.find(params[:id])
  end

  def new
    @ferret = Ferret.new
  end

  def create
    @ferret = Ferret.new(strong_params)
    if @ferret.save
      redirect_to ferret_path(@ferret)
    else
      render :new
    end
  end

  def edit
    @ferret = Ferret.find(params[:id])
  end

  def update
    @ferret = Ferret.find(params[:id])
    if @ferret.update(strong_params)
      redirect_to ferret_path(@ferret)
    else
      render :edit
    end
  end

  private

  def strong_params
    params.require(:ferret).permit(:name, :neutered, :charity_id)
  end
end
