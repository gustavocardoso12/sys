require 'test_helper'

class MercsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @merc = mercs(:one)
  end

  test "should get index" do
    get mercs_url
    assert_response :success
  end

  test "should get new" do
    get new_merc_url
    assert_response :success
  end

  test "should create merc" do
    assert_difference('Merc.count') do
      post mercs_url, params: { merc: { TipoMerc_id: @merc.TipoMerc_id, TipoNeg_id: @merc.TipoNeg_id, merc_nome: @merc.merc_nome, preco: @merc.preco, qtde: @merc.qtde } }
    end

    assert_redirected_to merc_url(Merc.last)
  end

  test "should show merc" do
    get merc_url(@merc)
    assert_response :success
  end

  test "should get edit" do
    get edit_merc_url(@merc)
    assert_response :success
  end

  test "should update merc" do
    patch merc_url(@merc), params: { merc: { TipoMerc_id: @merc.TipoMerc_id, TipoNeg_id: @merc.TipoNeg_id, merc_nome: @merc.merc_nome, preco: @merc.preco, qtde: @merc.qtde } }
    assert_redirected_to merc_url(@merc)
  end

  test "should destroy merc" do
    assert_difference('Merc.count', -1) do
      delete merc_url(@merc)
    end

    assert_redirected_to mercs_url
  end
end
