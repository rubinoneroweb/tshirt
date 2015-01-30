require 'test_helper'

class ArtcatsControllerTest < ActionController::TestCase
  setup do
    @artcat = artcats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artcats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artcat" do
    assert_difference('Artcat.count') do
      post :create, artcat: { description: @artcat.description, path: @artcat.path }
    end

    assert_redirected_to artcat_path(assigns(:artcat))
  end

  test "should show artcat" do
    get :show, id: @artcat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artcat
    assert_response :success
  end

  test "should update artcat" do
    patch :update, id: @artcat, artcat: { description: @artcat.description, path: @artcat.path }
    assert_redirected_to artcat_path(assigns(:artcat))
  end

  test "should destroy artcat" do
    assert_difference('Artcat.count', -1) do
      delete :destroy, id: @artcat
    end

    assert_redirected_to artcats_path
  end
end
