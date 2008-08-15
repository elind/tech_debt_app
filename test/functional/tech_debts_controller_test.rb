require 'test_helper'

class TechDebtsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:tech_debts)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_tech_debt
    assert_difference('TechDebt.count') do
      post :create, :tech_debt => { }
    end

    assert_redirected_to tech_debt_path(assigns(:tech_debt))
  end

  def test_should_show_tech_debt
    get :show, :id => tech_debts(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => tech_debts(:one).id
    assert_response :success
  end

  def test_should_update_tech_debt
    put :update, :id => tech_debts(:one).id, :tech_debt => { }
    assert_redirected_to tech_debt_path(assigns(:tech_debt))
  end

  def test_should_destroy_tech_debt
    assert_difference('TechDebt.count', -1) do
      delete :destroy, :id => tech_debts(:one).id
    end

    assert_redirected_to tech_debts_path
  end
end
