require 'test_helper'

class FermentablesControllerTest < ActionController::TestCase
  setup do
    @fermentable = fermentables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fermentables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fermentable" do
    assert_difference('Fermentable.count') do
      post :create, fermentable: { IBU_gal_per_lb: @fermentable.IBU_gal_per_lb, add_after_boil: @fermentable.add_after_boil, amount: @fermentable.amount, coarse_fine_diff: @fermentable.coarse_fine_diff, color: @fermentable.color, diastatic_power: @fermentable.diastatic_power, display_amount: @fermentable.display_amount, display_color: @fermentable.display_color, inventory: @fermentable.inventory, max_in_batch: @fermentable.max_in_batch, moisture: @fermentable.moisture, name: @fermentable.name, notes: @fermentable.notes, origin: @fermentable.origin, potential: @fermentable.potential, protein: @fermentable.protein, recommend_mash: @fermentable.recommend_mash, supplier: @fermentable.supplier, type: @fermentable.type, type: @fermentable.type, version: @fermentable.version, yield: @fermentable.yield }
    end

    assert_redirected_to fermentable_path(assigns(:fermentable))
  end

  test "should show fermentable" do
    get :show, id: @fermentable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fermentable
    assert_response :success
  end

  test "should update fermentable" do
    patch :update, id: @fermentable, fermentable: { IBU_gal_per_lb: @fermentable.IBU_gal_per_lb, add_after_boil: @fermentable.add_after_boil, amount: @fermentable.amount, coarse_fine_diff: @fermentable.coarse_fine_diff, color: @fermentable.color, diastatic_power: @fermentable.diastatic_power, display_amount: @fermentable.display_amount, display_color: @fermentable.display_color, inventory: @fermentable.inventory, max_in_batch: @fermentable.max_in_batch, moisture: @fermentable.moisture, name: @fermentable.name, notes: @fermentable.notes, origin: @fermentable.origin, potential: @fermentable.potential, protein: @fermentable.protein, recommend_mash: @fermentable.recommend_mash, supplier: @fermentable.supplier, type: @fermentable.type, type: @fermentable.type, version: @fermentable.version, yield: @fermentable.yield }
    assert_redirected_to fermentable_path(assigns(:fermentable))
  end

  test "should destroy fermentable" do
    assert_difference('Fermentable.count', -1) do
      delete :destroy, id: @fermentable
    end

    assert_redirected_to fermentables_path
  end
end
