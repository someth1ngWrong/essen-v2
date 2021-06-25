class Admin::CollectionsController < Admin::AdminController
  before_action :set_collection, except: [:index, :new, :create]

  # GET /collections or /collections.json
  def index
    @collections = Collection.all
  end

  # GET /collections/1 or /collections/1.json
  def show
  end

  # GET /collections/new
  def new
    @collection = Collection.new
  end

  # GET /collections/1/edit
  def edit
    # @collection.post_ingredients.build if @collection.post_ingredients.empty?
  end

  # POST /collections or /collections.json
  def create
    @collection = Collection.new(collection_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @collection.save
        format.html { redirect_to [:admin, @collection], notice: "Collection was successfully created." }
        format.json { render :show, status: :created, location: @collection }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collections/1 or /collections/1.json
  def update

    respond_to do |format|
      if @collection.update(collection_params)
        format.html { redirect_to [:admin, @collection], notice: "Collection was successfully updated." }
        format.json { render :show, status: :ok, location: @collection }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collections/1 or /collections/1.json
  def destroy

    @collection.destroy
    respond_to do |format|
      format.html { redirect_to admin_collections_url, notice: "Collection was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collection
      @collection = Collection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def collection_params
      params.require(:collection).permit(:name, :image, :title, post_ids: [])
    end
end
