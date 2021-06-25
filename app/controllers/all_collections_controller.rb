class AllCollectionsController < ApplicationController
  def index
    @collections = Collection.all
  end
end
