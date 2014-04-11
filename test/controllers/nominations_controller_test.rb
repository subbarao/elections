require 'test_helper'

class NominationsControllerTest < ActionController::TestCase
  setup do
    @nomination = nominations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nominations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nomination" do
    assert_difference('Nomination.count') do
      post :create, nomination: { candidate_id: @nomination.candidate_id, party_id: @nomination.party_id, seat_id: @nomination.seat_id, year: @nomination.year }
    end

    assert_redirected_to nomination_path(assigns(:nomination))
  end

  test "should show nomination" do
    get :show, id: @nomination
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nomination
    assert_response :success
  end

  test "should update nomination" do
    patch :update, id: @nomination, nomination: { candidate_id: @nomination.candidate_id, party_id: @nomination.party_id, seat_id: @nomination.seat_id, year: @nomination.year }
    assert_redirected_to nomination_path(assigns(:nomination))
  end

  test "should destroy nomination" do
    assert_difference('Nomination.count', -1) do
      delete :destroy, id: @nomination
    end

    assert_redirected_to nominations_path
  end
end
