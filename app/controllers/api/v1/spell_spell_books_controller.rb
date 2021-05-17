class Api::V1::SpellSpellBooksController < ApplicationController
  def index
    spell_spell_books = SpellSpellBook.all
    render json: spell_spell_books
  end

  def create
    spell_spell_book = SpellSpellBook.new(spell_spell_book_params)
    spell_book = SpellBook.find(spell_spell_book_params["spell_book_id"])

    if spell_spell_book.save
      render json: spell_book
    else
      render json: {error: 'Error creating association between spell and spell book.'}
    end
  end

  def destroy
    join = SpellSpellBook.find(params[:id])
    if join.destroy
      render json: {message: 'Spell and spell book join model was destroyed.'}
    else
      render json: {error: 'Error while deleting spell and spell book join model.'}
    end
  end

  private

  def spell_spell_book_params
    params.require(:spell_spell_book).permit(:id, :spell_id, :spell_book_id)
  end
end
