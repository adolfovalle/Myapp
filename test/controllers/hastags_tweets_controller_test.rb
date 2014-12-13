require 'test_helper'

class HastagsTweetsControllerTest < ActionController::TestCase
  setup do
    @hastags_tweet = hastags_tweets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hastags_tweets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hastags_tweet" do
    assert_difference('HastagsTweets.count') do
      post :create, hastags_tweet: {  }
    end

    assert_redirected_to hastags_tweet_path(assigns(:hastags_tweet))
  end

  test "should show hastags_tweet" do
    get :show, id: @hastags_tweet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hastags_tweet
    assert_response :success
  end

  test "should update hastags_tweet" do
    patch :update, id: @hastags_tweet, hastags_tweet: {  }
    assert_redirected_to hastags_tweet_path(assigns(:hastags_tweet))
  end

  test "should destroy hastags_tweet" do
    assert_difference('HastagsTweets.count', -1) do
      delete :destroy, id: @hastags_tweet
    end

    assert_redirected_to hastags_tweets_index_path
  end
end
