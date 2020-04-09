class CardsController < ApplicationController
  def new
    @card = Card.new
  end

  def create
    @category = Category.find(params[:id])
    @card = @category.cards.create(card_params)
  end

  def index
    @cards = @category.cards.all
  end

  def show
  
  end

  private

  def card_params
    params.require(:card).permit(:front, :back)
  end
end
