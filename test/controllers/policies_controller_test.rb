require 'test_helper'

class PoliciesControllerTest < ActionController::TestCase
  setup do
    @policy = policies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:policies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create policy" do
    assert_difference('Policy.count') do
      post :create, policy: { annualpremium: @policy.annualpremium, exclusionperiod: @policy.exclusionperiod, longdesc: @policy.longdesc, minretentionperiod: @policy.minretentionperiod, monthlypremium: @policy.monthlypremium, name: @policy.name, policylimit: @policy.policylimit, shortdesc: @policy.shortdesc }
    end

    assert_redirected_to policy_path(assigns(:policy))
  end

  test "should show policy" do
    get :show, id: @policy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @policy
    assert_response :success
  end

  test "should update policy" do
    patch :update, id: @policy, policy: { annualpremium: @policy.annualpremium, exclusionperiod: @policy.exclusionperiod, longdesc: @policy.longdesc, minretentionperiod: @policy.minretentionperiod, monthlypremium: @policy.monthlypremium, name: @policy.name, policylimit: @policy.policylimit, shortdesc: @policy.shortdesc }
    assert_redirected_to policy_path(assigns(:policy))
  end

  test "should destroy policy" do
    assert_difference('Policy.count', -1) do
      delete :destroy, id: @policy
    end

    assert_redirected_to policies_path
  end
end
