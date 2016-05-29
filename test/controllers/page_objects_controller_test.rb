require 'test_helper'

class PageObjectsControllerTest < ActionController::TestCase
  setup do
    @page_object = page_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:page_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create page_object" do
    assert_difference('PageObject.count') do
      post :create, page_object: { name: @page_object.name, tagName: @page_object.tagName }
    end

    assert_redirected_to page_object_path(assigns(:page_object))
  end

  test "should show page_object" do
    get :show, id: @page_object
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @page_object
    assert_response :success
  end

  test "should update page_object" do
    patch :update, id: @page_object, page_object: { name: @page_object.name, tagName: @page_object.tagName }
    assert_redirected_to page_object_path(assigns(:page_object))
  end

  test "should destroy page_object" do
    assert_difference('PageObject.count', -1) do
      delete :destroy, id: @page_object
    end

    assert_redirected_to page_objects_path
  end
end
