require 'test_helper'

class ContestantsControllerTest < ActionController::TestCase
  setup do
    @contestant = contestants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contestants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contestant" do
    assert_difference('Contestant.count') do
      post :create, contestant: { date_added: @contestant.date_added, description: @contestant.description, first_name: @contestant.first_name, last_name: @contestant.last_name, nickname: @contestant.nickname }
    end

    assert_redirected_to contestant_path(assigns(:contestant))
  end

  test "should show contestant" do
    get :show, id: @contestant
    assert_select "h2", { :count => 1, :text => 'Grewg "Brewg" Smash' }
    assert_response :success
  end

  test "should show create date in friendly format" do
    get :show, id: 1
    assert_select "span.date-added", 'Sat 12 Jan, 2013'
  end

  test "should get edit" do
    get :edit, id: @contestant
    assert_response :success
  end

  test "should update contestant" do
    put :update, id: @contestant, contestant: { date_added: @contestant.date_added, description: @contestant.description, first_name: @contestant.first_name, id: @contestant.id, last_name: @contestant.last_name, nickname: @contestant.nickname }
    assert_redirected_to contestant_path(assigns(:contestant))
  end

  test "should destroy contestant" do
    assert_difference('Contestant.count', -1) do
      delete :destroy, id: @contestant
    end

    assert_redirected_to contestants_path
  end
end
