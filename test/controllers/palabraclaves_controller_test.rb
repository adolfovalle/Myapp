require 'test_helper'

class PalabraclavesControllerTest < ActionController::TestCase
  setup do
    @palabraclafe = palabraclaves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:palabraclaves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create palabraclafe" do
    assert_difference('Palabraclave.count') do
      post :create, palabraclafe: { id_palabra: @palabraclafe.id_palabra, id_tweet_palabra: @palabraclafe.id_tweet_palabra, intencion: @palabraclafe.intencion, palabra_tweet: @palabraclafe.palabra_tweet }
    end

    assert_redirected_to palabraclafe_path(assigns(:palabraclafe))
  end

  test "should show palabraclafe" do
    get :show, id: @palabraclafe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @palabraclafe
    assert_response :success
  end

  test "should update palabraclafe" do
    patch :update, id: @palabraclafe, palabraclafe: { id_palabra: @palabraclafe.id_palabra, id_tweet_palabra: @palabraclafe.id_tweet_palabra, intencion: @palabraclafe.intencion, palabra_tweet: @palabraclafe.palabra_tweet }
    assert_redirected_to palabraclafe_path(assigns(:palabraclafe))
  end

  test "should destroy palabraclafe" do
    assert_difference('Palabraclave.count', -1) do
      delete :destroy, id: @palabraclafe
    end

    assert_redirected_to palabraclaves_path
  end
end
