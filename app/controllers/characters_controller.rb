class CharactersController < ApplicationController
  before_action :set_character, only: %i[edit update]

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)

    if @character.save
      redirect_to edit_character_path(@character, anchor: params.dig(:character, :next))
    end
  end

  def edit
  end

  def update
    if @character.update character_params
      redirect_to edit_character_path(@character, anchor: params.dig(:character, :next))
    end
  end

  protected

  def set_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).except(:next).permit!
  end
end
