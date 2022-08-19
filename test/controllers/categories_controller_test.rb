require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "1.1 shoud be able to create a category" do
    post create_category_path, params: {category: {category: "1st revision", details: "A category wherein the journal entry is on its first revision process."}}
    assert_redirected_to categories_path
  end

  test "1.2 should be able to reject a category with empty name" do
    post create_category_path, params: {category: {category: nil, details: "A category wherein the journal entry is on its first revision process."}}
    assert_response :redirect
  end

  # test "1.3 should be able to reject a category with name longer than 20 chars" do
  #   post create_category_path, params: {category: {category: "asdfawefv;skodjvowriaevkasdjknvkisdjfniwaejunfvksjdv", details: "A category wherein the journal entry is more than 20 chars."}}
  #   assert_response :error
  # end

  # test "1.4 should be able to reject a category with empty description" do
  #   post create_category_path, params: {category: {category: "2nd revision", details: ""}}
  #   assert_response :error
  # end

  # test "1.5 should be able to reject a category with description shorter than 10 chars" do
  #   post create_category_path, params: {category: {category: "2nd revision", details: "short"}}
  #   assert_response :error
  # end

  # test "1.6 should be able to reject a category with description greater than 100 chars" do
  #   post create_category_path, params: {category: {category: "2nd revision", details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel neque vitae nisi dapibus dictum ut quis quam. Ut nisi ante, placerat non tincidunt sed, interdum eget enim. Morbi eu libero tellus. Suspendisse eget feugiat felis, id vulputate magna. Mauris egestas lorem arcu, sed facilisis lorem ultrices et. Curabitur tincidunt mauris elit, mattis ullamcorper magna suscipit non. Sed sollicitudin vitae tortor non egestas. Integer non arcu libero."}}
  #   assert_response :error
  # end
  
end
