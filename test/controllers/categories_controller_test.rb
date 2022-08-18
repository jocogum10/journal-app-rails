require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should be able to show a category and tasks associated to it" do
    get '/categories'
    assert_response :success
  end

  test "should be able to get a category" do
    get new_category_path
    assert_response :success
  end

  test "should be able to post a category" do
    post create_category_path, params: {category: {category: "Second Revision", details: "A category wherein the journal entry is on its second revision process."}}
  end
end
