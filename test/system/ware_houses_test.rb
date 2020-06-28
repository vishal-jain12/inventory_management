require "application_system_test_case"

class WareHousesTest < ApplicationSystemTestCase
  setup do
    @ware_house = ware_houses(:one)
  end

  test "visiting the index" do
    visit ware_houses_url
    assert_selector "h1", text: "Ware Houses"
  end

  test "creating a Ware house" do
    visit ware_houses_url
    click_on "New Ware House"

    fill_in "Max capacity", with: @ware_house.max_capacity
    fill_in "Name", with: @ware_house.name
    fill_in "Pincode", with: @ware_house.pincode
    fill_in "Wh code", with: @ware_house.wh_code
    click_on "Create Ware house"

    assert_text "Ware house was successfully created"
    click_on "Back"
  end

  test "updating a Ware house" do
    visit ware_houses_url
    click_on "Edit", match: :first

    fill_in "Max capacity", with: @ware_house.max_capacity
    fill_in "Name", with: @ware_house.name
    fill_in "Pincode", with: @ware_house.pincode
    fill_in "Wh code", with: @ware_house.wh_code
    click_on "Update Ware house"

    assert_text "Ware house was successfully updated"
    click_on "Back"
  end

  test "destroying a Ware house" do
    visit ware_houses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ware house was successfully destroyed"
  end
end
