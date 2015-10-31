require 'test_helper'

class ScheduledAccessesControllerTest < ActionController::TestCase
  setup do
    @scheduled_access = scheduled_accesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scheduled_accesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scheduled_access" do
    assert_difference('ScheduledAccess.count') do
      post :create, scheduled_access: { order_id: @scheduled_access.order_id, scheduled_begin_time: @scheduled_access.scheduled_begin_time, scheduled_date: @scheduled_access.scheduled_date, sheduled_end_time: @scheduled_access.sheduled_end_time }
    end

    assert_redirected_to scheduled_access_path(assigns(:scheduled_access))
  end

  test "should show scheduled_access" do
    get :show, id: @scheduled_access
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scheduled_access
    assert_response :success
  end

  test "should update scheduled_access" do
    patch :update, id: @scheduled_access, scheduled_access: { order_id: @scheduled_access.order_id, scheduled_begin_time: @scheduled_access.scheduled_begin_time, scheduled_date: @scheduled_access.scheduled_date, sheduled_end_time: @scheduled_access.sheduled_end_time }
    assert_redirected_to scheduled_access_path(assigns(:scheduled_access))
  end

  test "should destroy scheduled_access" do
    assert_difference('ScheduledAccess.count', -1) do
      delete :destroy, id: @scheduled_access
    end

    assert_redirected_to scheduled_accesses_path
  end
end
