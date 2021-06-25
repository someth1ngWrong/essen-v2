class CollectionsController < ApplicationController
  def show
    @collection = Collection.find(params[:id]).serializable_hash(include: :posts)
  end

  def index
    @collections = Collection.all
  end
end
