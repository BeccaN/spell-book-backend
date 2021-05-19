class Api::V1::SpellBooksController < ApplicationController
  skip_before_action :authorized, only: [:create]
  
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
    if spell_book.destroy
      render json: {message: 'Spell Book was destroyed!'}
    else
      render json: {error: 'Something went wrong during Spell Book destruction...'}
    end
  end

  def update
    byebug
  end
  
  private

  def spell_book_params
    params.require(:spell_book).permit(:title)
  end

end
