class Api::V1::SpellBooksController < ApplicationController
  def index
    spell_books = SpellBook.all
    render json: spell_books
  end

  def create
    spell_book = SpellBook.new(spell_book_params)
    if spell_book.save
      render json: spell_book
    else
      render json: {error: 'Error creating account.'}
    end
  end

  def show
    spell_book = SpellBook.find(params[:id])
    render json: spell_book
  end

  def destroy
    spell_book = SpellBook.find(params[:id])
    spell_book.destroy
  end
  
  private

  def spell_book_params
    params.require(:spell_book).permit(:title)
  end

end
