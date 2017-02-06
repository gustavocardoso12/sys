require 'test_helper'

class TipoMercsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_merc = tipo_mercs(:one)
  end

  test "should get index" do
    get tipo_mercs_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_merc_url
    assert_response :success
  end

  test "should create tipo_merc" do
    assert_difference('TipoMerc.count') do
      post tipo_mercs_url, params: { tipo_merc: { descricao: @tipo_merc.descricao } }
    end

    assert_redirected_to tipo_merc_url(TipoMerc.last)
  end

  test "should show tipo_merc" do
    get tipo_merc_url(@tipo_merc)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_merc_url(@tipo_merc)
    assert_response :success
  end

  test "should update tipo_merc" do
    patch tipo_merc_url(@tipo_merc), params: { tipo_merc: { descricao: @tipo_merc.descricao } }
    assert_redirected_to tipo_merc_url(@tipo_merc)
  end

  test "should destroy tipo_merc" do
    assert_difference('TipoMerc.count', -1) do
      delete tipo_merc_url(@tipo_merc)
    end

    assert_redirected_to tipo_mercs_url
  end
end
