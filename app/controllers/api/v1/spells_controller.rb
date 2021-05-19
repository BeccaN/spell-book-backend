class Api::V1::SpellsController < ApplicationController
  skip_before_action :authorized
  
  def index
    spells = Spell.all
    render json: spells
  end
end
