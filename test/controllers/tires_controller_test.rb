require 'test_helper'

class TiresControllerTest < ActionController::TestCase
  setup do
    @tire = tires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tire" do
    assert_difference('Tire.count') do
      post :create, tire: { brand_id: @tire.brand_id, pattern_id: @tire.pattern_id, price: @tire.price, size: @tire.size, summary: @tire.summary, tire_type: @tire.tire_type, week: @tire.week, year: @tire.year }
    end

    assert_redirected_to tire_path(assigns(:tire))
  end

  test "should show tire" do
    get :show, id: @tire
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tire
    assert_response :success
  end

  test "should update tire" do
    patch :update, id: @tire, tire: { brand_id: @tire.brand_id, pattern_id: @tire.pattern_id, price: @tire.price, size: @tire.size, summary: @tire.summary, tire_type: @tire.tire_type, week: @tire.week, year: @tire.year }
    assert_redirected_to tire_path(assigns(:tire))
  end

  test "should destroy tire" do
    assert_difference('Tire.count', -1) do
      delete :destroy, id: @tire
    end

    assert_redirected_to tires_path
  end
end
