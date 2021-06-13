require "test_helper"

class PostIngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_ingredient = post_ingredients(:one)
  end

  test "should get index" do
    get post_ingredients_url
    assert_response :success
  end

  test "should get new" do
    get new_post_ingredient_url
    assert_response :success
  end

  test "should create post_ingredient" do
    assert_difference('PostIngredient.count') do
      post post_ingredients_url, params: { post_ingredient: { amount: @post_ingredient.amount, ingr_replica1_id: @post_ingredient.ingr_replica1_id, ingr_replica2_id: @post_ingredient.ingr_replica2_id, ingr_replica3_id: @post_ingredient.ingr_replica3_id, ingr_replica4_id: @post_ingredient.ingr_replica4_id, ingr_replica5_id: @post_ingredient.ingr_replica5_id, ingredient_id: @post_ingredient.ingredient_id, measure: @post_ingredient.measure, post_id: @post_ingredient.post_id } }
    end

    assert_redirected_to post_ingredient_url(PostIngredient.last)
  end

  test "should show post_ingredient" do
    get post_ingredient_url(@post_ingredient)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_ingredient_url(@post_ingredient)
    assert_response :success
  end

  test "should update post_ingredient" do
    patch post_ingredient_url(@post_ingredient), params: { post_ingredient: { amount: @post_ingredient.amount, ingr_replica1_id: @post_ingredient.ingr_replica1_id, ingr_replica2_id: @post_ingredient.ingr_replica2_id, ingr_replica3_id: @post_ingredient.ingr_replica3_id, ingr_replica4_id: @post_ingredient.ingr_replica4_id, ingr_replica5_id: @post_ingredient.ingr_replica5_id, ingredient_id: @post_ingredient.ingredient_id, measure: @post_ingredient.measure, post_id: @post_ingredient.post_id } }
    assert_redirected_to post_ingredient_url(@post_ingredient)
  end

  test "should destroy post_ingredient" do
    assert_difference('PostIngredient.count', -1) do
      delete post_ingredient_url(@post_ingredient)
    end

    assert_redirected_to post_ingredients_url
  end
end
