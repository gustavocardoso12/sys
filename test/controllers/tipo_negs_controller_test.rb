require 'test_helper'

class TipoNegsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_neg = tipo_negs(:one)
  end

  test "should get index" do
    get tipo_negs_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_neg_url
    assert_response :success
  end

  test "should create tipo_neg" do
    assert_difference('TipoNeg.count') do
      post tipo_negs_url, params: { tipo_neg: { descricao: @tipo_neg.descricao } }
    end

    assert_redirected_to tipo_neg_url(TipoNeg.last)
  end

  test "should show tipo_neg" do
    get tipo_neg_url(@tipo_neg)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_neg_url(@tipo_neg)
    assert_response :success
  end

  test "should update tipo_neg" do
    patch tipo_neg_url(@tipo_neg), params: { tipo_neg: { descricao: @tipo_neg.descricao } }
    assert_redirected_to tipo_neg_url(@tipo_neg)
  end

  test "should destroy tipo_neg" do
    assert_difference('TipoNeg.count', -1) do
      delete tipo_neg_url(@tipo_neg)
    end

    assert_redirected_to tipo_negs_url
  end
end
