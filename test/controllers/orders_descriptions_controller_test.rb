require "test_helper"

class OrdersDescriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orders_description = orders_descriptions(:one)
  end

  test "should get index" do
    get orders_descriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_orders_description_url
    assert_response :success
  end

  test "should create orders_description" do
    assert_difference("OrdersDescription.count") do
      post orders_descriptions_url, params: { orders_description: { item_id: @orders_description.item_id, order_id: @orders_description.order_id, quantity: @orders_description.quantity } }
    end

    assert_redirected_to orders_description_url(OrdersDescription.last)
  end

  test "should show orders_description" do
    get orders_description_url(@orders_description)
    assert_response :success
  end

  test "should get edit" do
    get edit_orders_description_url(@orders_description)
    assert_response :success
  end

  test "should update orders_description" do
    patch orders_description_url(@orders_description), params: { orders_description: { item_id: @orders_description.item_id, order_id: @orders_description.order_id, quantity: @orders_description.quantity } }
    assert_redirected_to orders_description_url(@orders_description)
  end

  test "should destroy orders_description" do
    assert_difference("OrdersDescription.count", -1) do
      delete orders_description_url(@orders_description)
    end

    assert_redirected_to orders_descriptions_url
  end
end
