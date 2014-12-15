require 'test_helper'

class EstadisticasControllerTest < ActionController::TestCase
  test "should get ver" do
    get :ver
    assert_response :success
  end

end
