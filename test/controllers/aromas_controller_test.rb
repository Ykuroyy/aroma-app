require "test_helper"

class AromasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aromas_index_url
    assert_response :success
  end

  test "should get result" do
    get aromas_result_url
    assert_response :success
  end
end
