class CharactersController < ApplicationController
  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    
    if @character.save
      redirect_to edit_character_path(@character, anchor: "personals")
    end
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
  end
  
  protected
  
  def character_params
    params.require(:character).permit!
  end
end
