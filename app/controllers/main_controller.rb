class MainController < ApplicationController
  before_action :set_filter

  def index
    @recipes = Post.joins(:food_categories).where(food_categories: { name: @active_filter }).all
    @collections = Collection.all
  end

  private

  def set_filter
    @active_filter = params[:active_filter] || "omnivores"
  end
end
