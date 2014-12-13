require 'test_helper'

class TweetsHastagsControllerTest < ActionController::TestCase
  setup do
    @tweets_hastag = tweets_hastags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tweets_hastags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tweets_hastag" do
    assert_difference('TweetsHastags.count') do
      post :create, tweets_hastag: { id_hastag: @tweets_hastag.id_hastag, id_tweet: @tweets_hastag.id_tweet }
    end

    assert_redirected_to tweets_hastag_path(assigns(:tweets_hastag))
  end

  test "should show tweets_hastag" do
    get :show, id: @tweets_hastag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tweets_hastag
    assert_response :success
  end

  test "should update tweets_hastag" do
    patch :update, id: @tweets_hastag, tweets_hastag: { id_hastag: @tweets_hastag.id_hastag, id_tweet: @tweets_hastag.id_tweet }
    assert_redirected_to tweets_hastag_path(assigns(:tweets_hastag))
  end

  test "should destroy tweets_hastag" do
    assert_difference('TweetsHastags.count', -1) do
      delete :destroy, id: @tweets_hastag
    end

    assert_redirected_to tweets_hastags_index_path
  end
end
