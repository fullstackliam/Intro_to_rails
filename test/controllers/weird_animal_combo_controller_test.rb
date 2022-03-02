require "test_helper"

class WeirdAnimalComboControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get weird_animal_combo_index_url
    assert_response :success
  end

  test "should get show" do
    get weird_animal_combo_show_url
    assert_response :success
  end

  test "should get new" do
    get weird_animal_combo_new_url
    assert_response :success
  end
end
