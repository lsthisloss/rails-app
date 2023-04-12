require "application_system_test_case"

class OrdersDescriptionsTest < ApplicationSystemTestCase
  setup do
    @orders_description = orders_descriptions(:one)
  end

  test "visiting the index" do
    visit orders_descriptions_url
    assert_selector "h1", text: "Orders descriptions"
  end

  test "should create orders description" do
    visit orders_descriptions_url
    click_on "New orders description"

    fill_in "Item", with: @orders_description.item_id
    fill_in "Order", with: @orders_description.order_id
    fill_in "Quantity", with: @orders_description.quantity
    click_on "Create Orders description"

    assert_text "Orders description was successfully created"
    click_on "Back"
  end

  test "should update Orders description" do
    visit orders_description_url(@orders_description)
    click_on "Edit this orders description", match: :first

    fill_in "Item", with: @orders_description.item_id
    fill_in "Order", with: @orders_description.order_id
    fill_in "Quantity", with: @orders_description.quantity
    click_on "Update Orders description"

    assert_text "Orders description was successfully updated"
    click_on "Back"
  end

  test "should destroy Orders description" do
    visit orders_description_url(@orders_description)
    click_on "Destroy this orders description", match: :first

    assert_text "Orders description was successfully destroyed"
  end
end
