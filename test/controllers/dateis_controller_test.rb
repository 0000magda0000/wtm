require 'test_helper'

class DateisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @datei = dateis(:one)
  end

  test "should get index" do
    get dateis_url
    assert_response :success
  end

  test "should get new" do
    get new_datei_url
    assert_response :success
  end

  test "should create datei" do
    assert_difference('Datei.count') do
      post dateis_url, params: { datei: { Name: @datei.Name, Titel: @datei.Titel } }
    end

    assert_redirected_to datei_url(Datei.last)
  end

  test "should show datei" do
    get datei_url(@datei)
    assert_response :success
  end

  test "should get edit" do
    get edit_datei_url(@datei)
    assert_response :success
  end

  test "should update datei" do
    patch datei_url(@datei), params: { datei: { Name: @datei.Name, Titel: @datei.Titel } }
    assert_redirected_to datei_url(@datei)
  end

  test "should destroy datei" do
    assert_difference('Datei.count', -1) do
      delete datei_url(@datei)
    end

    assert_redirected_to dateis_url
  end
end
