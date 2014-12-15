require 'test_helper'

class HastagsControllerTest < ActionController::TestCase
  setup do
    @hastag = hastags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hastags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hastag" do
    assert_difference('Hastag.count') do
      post :create, hastag: { etiqueta: @hastag.etiqueta, intencion: @hastag.intencion }
    end

    assert_redirected_to hastag_path(assigns(:hastag))
  end

  test "should show hastag" do
    get :show, id: @hastag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hastag
    assert_response :success
  end

  test "should update hastag" do
    patch :update, id: @hastag, hastag: { etiqueta: @hastag.etiqueta, intencion: @hastag.intencion }
    assert_redirected_to hastag_path(assigns(:hastag))
  end

  test "should destroy hastag" do
    assert_difference('Hastag.count', -1) do
      delete :destroy, id: @hastag
    end

    assert_redirected_to hastags_path
  end
end
