class Admin::PostsController < Admin::AdminController
  before_action :set_post, except: [:index, :new, :create]
  
  # GET /posts or /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1 or /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
    # @post.post_ingredients.build if @post.post_ingredients.empty?
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to [:admin, @post], notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update

    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to [:admin, @post], notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy

    @post.destroy
    respond_to do |format|
      format.html { redirect_to admin_posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:name, :title, :content, :image, :time, :category_id, :user_id, 
        ingredient_ids: [], 
        post_ingredients_attributes: [:id, :post_id, :ingredient_id, :amount, :measure, :ingr_replica1_id, :ingr_replica2_id, :ingr_replica3_id, :ingr_replica4_id, :ingr_replica5_id, :_destroy])
    end
end
