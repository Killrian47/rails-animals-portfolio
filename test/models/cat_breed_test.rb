require "test_helper"

class CatBreedTest < ActiveSupport::TestCase
  test "should save cat breed with name" do
    breed = CatBreed.new(name: "Persian")
    assert breed.save, "Could not save the cat breed with name"
  end

  test "shoud not save cat breed with duplicate name" do
    breed1 = CatBreed.new(name: "Persian")
    breed1.save
    breed2 = CatBreed.new(name: "Persian")
    assert_not breed2.save, "Saved the cat breed with duplicate name"
  end

  test "should not save cat breed without name" do
    breed = CatBreed.new
    assert_not breed.save, "Saved the cat breed without a name"
  end

  test "should not save cat breed with nil name" do
    breed = CatBreed.new(name: nil)
    assert_not breed.save, "Saved the cat breed with nil name"
  end

  test "should not save cat breed with empty name" do
    breed = CatBreed.new(name: "")
    assert_not breed.save, "Saved the cat breed with empty name"
  end

  test "should not save cat breed with numeric name" do
    breed = CatBreed.new(name: "1234")
    assert_not breed.save, "Saved the cat breed with numeric name"
  end

  test "should not save cat breed with name length less than 3" do
    breed = CatBreed.new(name: "ab")
    assert_not breed.save, "Saved the cat breed with name length less than 3"
  end

  test "should not save cat breed with name length more than 50" do
    breed = CatBreed.new(name: "a" * 51)
    assert_not breed.save, "Saved the cat breed with name length more than 50"
  end
end
