require 'test_helper'

class MicroopostsControllerTest < ActionController::TestCase
  setup do
    @microopost = microoposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microoposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microopost" do
    assert_difference('Microopost.count') do
      post :create, :microopost => { :content => @microopost.content, :string => @microopost.string, :user_id => @microopost.user_id }
    end

    assert_redirected_to microopost_path(assigns(:microopost))
  end

  test "should show microopost" do
    get :show, :id => @microopost
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @microopost
    assert_response :success
  end

  test "should update microopost" do
    put :update, :id => @microopost, :microopost => { :content => @microopost.content, :string => @microopost.string, :user_id => @microopost.user_id }
    assert_redirected_to microopost_path(assigns(:microopost))
  end

  test "should destroy microopost" do
    assert_difference('Microopost.count', -1) do
      delete :destroy, :id => @microopost
    end

    assert_redirected_to microoposts_path
  end
end
