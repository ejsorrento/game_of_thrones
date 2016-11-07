class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
  end

  def create
    @character = Character.new(params[:character])

    @character.save
    redirect_to @character
  end

  def update
  @character = character.find(params[:id])

  if @character.update(character_params)
    redirect_to @character
  else
    render 'edit'
  end
  end

  def destroy
    @character = Character.fin(params[:id])
    @character.destroy

    redirect_to @character
  end

  private
  def character_params
    params.require(:chatacter).permit(:name, :allegiance, :sex)
  end
end
