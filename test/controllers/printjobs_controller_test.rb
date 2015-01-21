require 'test_helper'

class PrintjobsControllerTest < ActionController::TestCase
  setup do
    @printjob = printjobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:printjobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create printjob" do
    assert_difference('Printjob.count') do
      post :create, printjob: { artwork_id: @printjob.artwork_id, color_id: @printjob.color_id, diamond: @printjob.diamond, mod_id: @printjob.mod_id, name: @printjob.name, name_behind: @printjob.name_behind, name_under: @printjob.name_under, shape_id: @printjob.shape_id, size_id: @printjob.size_id }
    end

    assert_redirected_to printjob_path(assigns(:printjob))
  end

  test "should show printjob" do
    get :show, id: @printjob
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @printjob
    assert_response :success
  end

  test "should update printjob" do
    patch :update, id: @printjob, printjob: { artwork_id: @printjob.artwork_id, color_id: @printjob.color_id, diamond: @printjob.diamond, mod_id: @printjob.mod_id, name: @printjob.name, name_behind: @printjob.name_behind, name_under: @printjob.name_under, shape_id: @printjob.shape_id, size_id: @printjob.size_id }
    assert_redirected_to printjob_path(assigns(:printjob))
  end

  test "should destroy printjob" do
    assert_difference('Printjob.count', -1) do
      delete :destroy, id: @printjob
    end

    assert_redirected_to printjobs_path
  end
end
