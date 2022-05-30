require "test_helper"

class PresentoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get presento_index_url
    assert_response :success
  end
end
