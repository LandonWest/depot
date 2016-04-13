require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures :products
  test "product attributes must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  test "product price must be positive" do
    product = Product.new(title: "Test Product", description: "This is a test", image_url: "test.jpg")
    product.price = -1
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"], product.errors[:price]

    product.price = 0
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"], product.errors[:price]

    product.price = 1
    assert product.valid?
  end

  def new_product(image_url)
    Product.new(title: "Test Title", description: "This is a test", price: 1, image_url: image_url)
  end

  test "image url" do
    ok = %w{ test.gif test.jpg test.png TEST.JPG TEST.Jpg http://a.b.c/x/y/z/test.gif }
    bad = %w{ test.doc teset.gif/more test.gif.more }
    ok.each do |file|
      assert new_product(file).valid?, "#{file} should be valid"
    end
    bad.each do |file|
      assert new_product(file).invalid?, "#{file} should Not be valid"
    end
  end

  test "product is not valid without a unique title" do
    product = Product.new(title: products(:small_arms).title, description: "this is a test", price: 1, image_url: "test.gif")
    assert product.invalid?
    assert_equal ["has already been taken"], product.errors[:title]
  end
end
