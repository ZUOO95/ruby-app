require 'test_helper'

class GraczsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gracz = graczs(:one)
  end

  test "should get index" do
    get graczs_url
    assert_response :success
  end

  test "should get new" do
    get new_gracz_url
    assert_response :success
  end

  test "should create gracz" do
    assert_difference('Gracz.count') do
      post graczs_url, params: { gracz: { imie: @gracz.imie, nazwisko: @gracz.nazwisko, nick: @gracz.nick, team_id: @gracz.team_id } }
    end

    assert_redirected_to gracz_url(Gracz.last)
  end

  test "should show gracz" do
    get gracz_url(@gracz)
    assert_response :success
  end

  test "should get edit" do
    get edit_gracz_url(@gracz)
    assert_response :success
  end

  test "should update gracz" do
    patch gracz_url(@gracz), params: { gracz: { imie: @gracz.imie, nazwisko: @gracz.nazwisko, nick: @gracz.nick, team_id: @gracz.team_id } }
    assert_redirected_to gracz_url(@gracz)
  end

  test "should destroy gracz" do
    assert_difference('Gracz.count', -1) do
      delete gracz_url(@gracz)
    end

    assert_redirected_to graczs_url
  end
end
