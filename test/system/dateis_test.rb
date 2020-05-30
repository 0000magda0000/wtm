require "application_system_test_case"

class DateisTest < ApplicationSystemTestCase
  setup do
    @datei = dateis(:one)
  end

  test "visiting the index" do
    visit dateis_url
    assert_selector "h1", text: "Dateis"
  end

  test "creating a Datei" do
    visit dateis_url
    click_on "New Datei"

    fill_in "Name", with: @datei.Name
    fill_in "Titel", with: @datei.Titel
    click_on "Create Datei"

    assert_text "Datei was successfully created"
    click_on "Back"
  end

  test "updating a Datei" do
    visit dateis_url
    click_on "Edit", match: :first

    fill_in "Name", with: @datei.Name
    fill_in "Titel", with: @datei.Titel
    click_on "Update Datei"

    assert_text "Datei was successfully updated"
    click_on "Back"
  end

  test "destroying a Datei" do
    visit dateis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Datei was successfully destroyed"
  end
end
