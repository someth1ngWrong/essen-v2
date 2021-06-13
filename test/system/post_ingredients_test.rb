require "application_system_test_case"

class PostIngredientsTest < ApplicationSystemTestCase
  setup do
    @post_ingredient = post_ingredients(:one)
  end

  test "visiting the index" do
    visit post_ingredients_url
    assert_selector "h1", text: "Post Ingredients"
  end

  test "creating a Post ingredient" do
    visit post_ingredients_url
    click_on "New Post Ingredient"

    fill_in "Amount", with: @post_ingredient.amount
    fill_in "Ingr replica1", with: @post_ingredient.ingr_replica1_id
    fill_in "Ingr replica2", with: @post_ingredient.ingr_replica2_id
    fill_in "Ingr replica3", with: @post_ingredient.ingr_replica3_id
    fill_in "Ingr replica4", with: @post_ingredient.ingr_replica4_id
    fill_in "Ingr replica5", with: @post_ingredient.ingr_replica5_id
    fill_in "Ingredient", with: @post_ingredient.ingredient_id
    fill_in "Measure", with: @post_ingredient.measure
    fill_in "Post", with: @post_ingredient.post_id
    click_on "Create Post ingredient"

    assert_text "Post ingredient was successfully created"
    click_on "Back"
  end

  test "updating a Post ingredient" do
    visit post_ingredients_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @post_ingredient.amount
    fill_in "Ingr replica1", with: @post_ingredient.ingr_replica1_id
    fill_in "Ingr replica2", with: @post_ingredient.ingr_replica2_id
    fill_in "Ingr replica3", with: @post_ingredient.ingr_replica3_id
    fill_in "Ingr replica4", with: @post_ingredient.ingr_replica4_id
    fill_in "Ingr replica5", with: @post_ingredient.ingr_replica5_id
    fill_in "Ingredient", with: @post_ingredient.ingredient_id
    fill_in "Measure", with: @post_ingredient.measure
    fill_in "Post", with: @post_ingredient.post_id
    click_on "Update Post ingredient"

    assert_text "Post ingredient was successfully updated"
    click_on "Back"
  end

  test "destroying a Post ingredient" do
    visit post_ingredients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post ingredient was successfully destroyed"
  end
end
