class WelcomeController < ApplicationController
  def index
    @categories = Category.all
    @links = Link.all
  end
end
