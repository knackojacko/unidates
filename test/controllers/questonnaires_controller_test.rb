require 'test_helper'

class QuestonnairesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @questonnaire = questonnaires(:one)
  end

  test "should get index" do
    get questonnaires_url
    assert_response :success
  end

  test "should get new" do
    get new_questonnaire_url
    assert_response :success
  end

  test "should create questonnaire" do
    assert_difference('Questonnaire.count') do
      post questonnaires_url, params: { questonnaire: {  } }
    end

    assert_redirected_to questonnaire_url(Questonnaire.last)
  end

  test "should show questonnaire" do
    get questonnaire_url(@questonnaire)
    assert_response :success
  end

  test "should get edit" do
    get edit_questonnaire_url(@questonnaire)
    assert_response :success
  end

  test "should update questonnaire" do
    patch questonnaire_url(@questonnaire), params: { questonnaire: {  } }
    assert_redirected_to questonnaire_url(@questonnaire)
  end

  test "should destroy questonnaire" do
    assert_difference('Questonnaire.count', -1) do
      delete questonnaire_url(@questonnaire)
    end

    assert_redirected_to questonnaires_url
  end
end
