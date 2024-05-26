require "test_helper"

class CatTest < ActiveSupport::TestCase
  test "should save cat with name, cat_breed, and age" do
    cat = Cat.new(name: "Fluffy", cat_breed: cat_breeds(:one), age: 2)
    assert cat.save, "Failed to save cat with name, cat_breed, and age"
  end

  test "should not save cat without name" do
    cat = Cat.new(cat_breed: cat_breeds(:one), age: 2)
    assert_not cat.save, "Saved cat without name"
  end

  test "should not save cat with name less than 3 characters" do
    cat = Cat.new(name: "Fl", cat_breed: cat_breeds(:one), age: 2)
    assert_not cat.save, "Saved cat with name less than 3 characters"
  end

  test "should not save cat with name more than 50 characters" do
    cat = Cat.new(name: "a" * 51, cat_breed: cat_breeds(:one), age: 2)
    assert_not cat.save, "Saved cat with name more than 50 characters"
  end

  test "should not save cat with name containing numbers" do
    cat = Cat.new(name: "Fluffy1", cat_breed: cat_breeds(:one), age: 2)
    assert_not cat.save, "Saved cat with name containing numbers"
  end

  test "should not save cat with empty name" do
    cat = Cat.new(name: "", cat_breed: cat_breeds(:one), age: 2)
    assert_not cat.save, "Saved cat with empty name"
  end

  test "should not save cat with nil name" do
    cat = Cat.new(name: nil, cat_breed: cat_breeds(:one), age: 2)
    assert_not cat.save, "Saved cat with nil name"
  end

  test "should not save cat without cat_breed" do
    cat = Cat.new(name: "Fluffy", age: 2)
    assert_not cat.save, "Saved cat without cat_breed"
  end

  test "should not save cat with nil cat_breed" do
    cat = Cat.new(name: "Fluffy", cat_breed: nil, age: 2)
    assert_not cat.save, "Saved cat with nil cat_breed"
  end

  test "should not save cat without age" do
    cat = Cat.new(name: "Fluffy", cat_breed: cat_breeds(:one))
    assert_not cat.save, "Saved cat without age"
  end

  test "should not save cat with age less than 0" do
    cat = Cat.new(name: "Fluffy", cat_breed: cat_breeds(:one), age: -1)
    assert_not cat.save, "Saved cat with age less than 0"
  end
end
