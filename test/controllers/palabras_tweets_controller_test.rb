require 'test_helper'

class PalabrasTweetsControllerTest < ActionController::TestCase
  setup do
    @palabras_tweet = palabras_tweets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:palabras_tweets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create palabras_tweet" do
    assert_difference('PalabrasTweets.count') do
      post :create, palabras_tweet: {  }
    end

    assert_redirected_to palabras_tweet_path(assigns(:palabras_tweet))
  end

  test "should show palabras_tweet" do
    get :show, id: @palabras_tweet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @palabras_tweet
    assert_response :success
  end

  test "should update palabras_tweet" do
    patch :update, id: @palabras_tweet, palabras_tweet: {  }
    assert_redirected_to palabras_tweet_path(assigns(:palabras_tweet))
  end

  test "should destroy palabras_tweet" do
    assert_difference('PalabrasTweets.count', -1) do
      delete :destroy, id: @palabras_tweet
    end

    assert_redirected_to palabras_tweets_index_path
  end
end
