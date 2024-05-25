require "test_helper"

class CatBreedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cat_breed = cat_breeds(:one)
  end

  test "should get index" do
    get cat_breeds_url
    assert_response :success
    assert_not_nil assigns(:cat_breeds)
  end

  test "should show cat_breed" do
    get cat_breed_url(@cat_breed)
    assert_response :success
    assert_not_nil assigns(:cat_breed)
  end
end
