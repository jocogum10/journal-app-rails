require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @category = Category.create(category: "Published", details: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
  end

  test "1.1 shoud be able to create a category" do
    category = Category.new
    category.category = '1st revision'
    category.details = 'A category wherein the journal entry is on its first revision process.'
    assert category.save, "Created a new category"
  end

  test "1.2 should be able to reject a category with empty name" do
    category = Category.new
    category.category = ''
    category.details = 'A category wherein the journal entry is empty.'
    assert_not category.save, "Created a category where name is empty."
  end

  test "1.3 should be able to reject a category with name longer than 20 chars" do
    category = Category.new
    category.category = 'asdfawefv;skodjvowriaevkasdjknvkisdjfniwaejunfvksjdv'
    category.details = 'A category wherein the journal entry is more than 20 chars.'
    assert_not category.save, "Created a category where name is more than 20 chars."
  end

  test "1.4 should be able to reject a category with empty description" do
    category = Category.new
    category.category = '2nd revision'
    category.details = ''
    assert_not category.save, "Created a category where the details is empty."
  end

  test "1.5 should be able to reject a category with description shorter than 10 chars" do
    category = Category.new
    category.category = '2nd revision'
    category.details = 'short'
    assert_not category.save, "Created a category with description is shorted than 10 chars"
  end

  test "1.6 should be able to reject a category with description greater than 100 chars" do
    category = Category.new
    category.category = '2nd revision'
    category.details = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel neque vitae nisi dapibus dictum ut quis quam. Ut nisi ante, placerat non tincidunt sed, interdum eget enim. Morbi eu libero tellus. Suspendisse eget feugiat felis, id vulputate magna. Mauris egestas lorem arcu, sed facilisis lorem ultrices et. Curabitur tincidunt mauris elit, mattis ullamcorper magna suscipit non. Sed sollicitudin vitae tortor non egestas. Integer non arcu libero.'
    assert_not category.save, "Created a category with description greater than 100 chars"
  end

  test "3.1 should be able to update a category" do
    @category.category = "Published (edited)"
    @category.details = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
    assert @category.save, "Updated a category name"
  end

  test "3.2 should be able to reject a category update for empty name" do
    @category.category = ""
    @category.details = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
    assert_not @category.save, "Updated for empty name"
  end

  test "3.3 should be able to reject a category update for name chars greater than 20" do
    @category.category = "asdfawefv;skodjvowriaevkasdjknvkisdjfniwaejunfvksjdv"
    @category.details = 'A category wherein the journal entry is more than 20 chars.'
    assert_not @category.save, "Updated for name chars greater than 20"
  end

  test "3.4 should be able to reject a category update for empty description" do
    @category.category = "asdfawefv;sko"
    @category.details = ''
    assert_not @category.save, "Updated for empty description"
  end

  test "3.5 should be able to reject a category update for description shorter than 10 chars" do
    @category.category = "2nd revision"
    @category.details = 'short'
    assert_not @category.save, "Updated for description shorter than 10 chars"
  end

  test "3.6 should be able to reject a category update for empty description greater than 100 chars" do
    @category.category = "2nd revision"
    @category.details = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel neque vitae nisi dapibus dictum ut quis quam. Ut nisi ante, placerat non tincidunt sed, interdum eget enim. Morbi eu libero tellus. Suspendisse eget feugiat felis, id vulputate magna. Mauris egestas lorem arcu, sed facilisis lorem ultrices et. Curabitur tincidunt mauris elit, mattis ullamcorper magna suscipit non. Sed sollicitudin vitae tortor non egestas. Integer non arcu libero.'
    assert_not @category.save, "Updated for description shorter than 10 chars"
  end
end
