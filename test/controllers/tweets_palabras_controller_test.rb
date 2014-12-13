require 'test_helper'

class TweetsPalabrasControllerTest < ActionController::TestCase
  setup do
    @tweets_palabra = tweets_palabras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tweets_palabras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tweets_palabra" do
    assert_difference('TweetsPalabras.count') do
      post :create, tweets_palabra: {  }
    end

    assert_redirected_to tweets_palabra_path(assigns(:tweets_palabra))
  end

  test "should show tweets_palabra" do
    get :show, id: @tweets_palabra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tweets_palabra
    assert_response :success
  end

  test "should update tweets_palabra" do
    patch :update, id: @tweets_palabra, tweets_palabra: {  }
    assert_redirected_to tweets_palabra_path(assigns(:tweets_palabra))
  end

  test "should destroy tweets_palabra" do
    assert_difference('TweetsPalabras.count', -1) do
      delete :destroy, id: @tweets_palabra
    end

    assert_redirected_to tweets_palabras_index_path
  end
end
