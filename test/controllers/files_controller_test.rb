require "test_helper"

class FilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get files_index_url
    assert_response :success
  end

  test "should get download" do
    get files_download_url
    assert_response :success
  end
end
