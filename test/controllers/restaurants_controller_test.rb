require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  setup do
    @restaurant = restaurants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant" do
    assert_difference('Restaurant.count') do
      post :create, restaurant: { city: @restaurant.city, cuisine: @restaurant.cuisine, manager_name: @restaurant.manager_name, neighborhood: @restaurant.neighborhood, phone_number: @restaurant.phone_number, restaurant_name: @restaurant.restaurant_name, state: @restaurant.state, street_address_1: @restaurant.street_address_1, street_address_2: @restaurant.street_address_2, zip: @restaurant.zip }
    end

    assert_redirected_to restaurant_path(assigns(:restaurant))
  end

  test "should show restaurant" do
    get :show, id: @restaurant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant
    assert_response :success
  end

  test "should update restaurant" do
    patch :update, id: @restaurant, restaurant: { city: @restaurant.city, cuisine: @restaurant.cuisine, manager_name: @restaurant.manager_name, neighborhood: @restaurant.neighborhood, phone_number: @restaurant.phone_number, restaurant_name: @restaurant.restaurant_name, state: @restaurant.state, street_address_1: @restaurant.street_address_1, street_address_2: @restaurant.street_address_2, zip: @restaurant.zip }
    assert_redirected_to restaurant_path(assigns(:restaurant))
  end

  test "should destroy restaurant" do
    assert_difference('Restaurant.count', -1) do
      delete :destroy, id: @restaurant
    end

    assert_redirected_to restaurants_path
  end
end
