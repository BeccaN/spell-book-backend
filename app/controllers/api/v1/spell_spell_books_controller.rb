class Api::V1::SpellSpellBooksController < ApplicationController
  def create
    spell_spell_book = SpellSpellBook.new(spell_spell_book_params)
    spell_book = SpellBook.find(spell_spell_book_params["spell_book_id"])

    if spell_spell_book.save
      render json: spell_book
    else
      render json: {error: 'Error creating association between spell and spell book.'}
    end
  end

  private

  def spell_spell_book_params
    params.require(:spell_spell_book).permit(:spell_id, :spell_book_id)
  end
end
