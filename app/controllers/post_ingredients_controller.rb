class PostIngredientsController < ApplicationController
  before_action :get_post
  before_action :set_post_ingredient, only: %i[ show edit update destroy ]
  after_action :verify_authorized, except: %i[ index show ]

  # GET /post_ingredients or /post_ingredients.json
  def index
    @post_ingredients = @post.post_ingredients
  end

  # GET /post_ingredients/1 or /post_ingredients/1.json
  def show
  end

  # GET /post_ingredients/new
  def new
    @post_ingredient = @post.post_ingredients.build
    authorize @post_ingredient
  end

  # GET /post_ingredients/1/edit
  def edit
  end

  # POST /post_ingredients or /post_ingredients.json
  def create
    @post_ingredient = @post.post_ingredients.build(post_ingredient_params)
    authorize @post_ingredient

    respond_to do |format|
      if @post_ingredient.save
        format.html { redirect_to post_post_ingredients_path(@post), notice: "Post ingredient was successfully created." }
        format.json { render :show, status: :created, location: @post_ingredient }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_ingredients/1 or /post_ingredients/1.json
  def update
    authorize @post_ingredient

    respond_to do |format|
      if @post_ingredient.update(post_ingredient_params)
        format.html { redirect_to post_post_ingredient_path(@post), notice: "Post ingredient was successfully updated." }
        format.json { render :show, status: :ok, location: @post_ingredient }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_ingredients/1 or /post_ingredients/1.json
  def destroy
    authorize @post_ingredient

    @post_ingredient.destroy
    respond_to do |format|
      format.html { redirect_to post_post_ingredients_path(@post), notice: "Post ingredient was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def get_post
    @post = Post.find(params[:post_id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_post_ingredient
    @post_ingredient = @post.post_ingredients.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def post_ingredient_params
    params.require(:post_ingredient).permit(:post_id, :ingredient_id, :amount, :measure, :ingr_replica1_id, :ingr_replica2_id, :ingr_replica3_id, :ingr_replica4_id, :ingr_replica5_id)
  end
end
