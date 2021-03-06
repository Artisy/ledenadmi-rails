require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: { city: @member.city, dob: @member.dob, emailaddress: @member.emailaddress, housenumber: @member.housenumber, lastname: @member.lastname, member_since: @member.member_since, name: @member.name, phonenumber: @member.phonenumber, street: @member.street, zipcode: @member.zipcode }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    patch :update, id: @member, member: { city: @member.city, dob: @member.dob, emailaddress: @member.emailaddress, housenumber: @member.housenumber, lastname: @member.lastname, member_since: @member.member_since, name: @member.name, phonenumber: @member.phonenumber, street: @member.street, zipcode: @member.zipcode }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end
