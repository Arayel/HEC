require 'test_helper'

class LineUpBoomsControllerTest < ActionController::TestCase
  setup do
    @line_up_boom = line_up_booms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:line_up_booms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line_up_boom" do
    assert_difference('LineUpBoom.count') do
      post :create, line_up_boom: { DjName: @line_up_boom.DjName, MusicStyle: @line_up_boom.MusicStyle, SetTime: @line_up_boom.SetTime }
    end

    assert_redirected_to line_up_boom_path(assigns(:line_up_boom))
  end

  test "should show line_up_boom" do
    get :show, id: @line_up_boom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @line_up_boom
    assert_response :success
  end

  test "should update line_up_boom" do
    patch :update, id: @line_up_boom, line_up_boom: { DjName: @line_up_boom.DjName, MusicStyle: @line_up_boom.MusicStyle, SetTime: @line_up_boom.SetTime }
    assert_redirected_to line_up_boom_path(assigns(:line_up_boom))
  end

  test "should destroy line_up_boom" do
    assert_difference('LineUpBoom.count', -1) do
      delete :destroy, id: @line_up_boom
    end

    assert_redirected_to line_up_booms_path
  end
end
