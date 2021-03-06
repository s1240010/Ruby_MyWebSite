require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
    @update = {
      title:  "Lirem Ipsum",
      description: "Wibblesmare fun",
      name: "nemo"
    }
  end

  test "should get index" do
    get new_product_url
    assert_response :success
    assert_not_till assigns(:products)
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { affiliation: @product.affiliation, description: @product.description, email_address: @product.email_address, image_url: @product.image_url, name: @product.name, phone_number: @product.phone_number, title: @product.title } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { affiliation: @product.affiliation, description: @product.description, email_address: @product.email_address, image_url: @product.image_url, name: @product.name, phone_number: @product.phone_number, title: @product.title } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
