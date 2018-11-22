require 'test_helper'

class PhilosophersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @philosopher = philosophers(:one)
  end

  test "should get index" do
    get philosophers_url, as: :json
    assert_response :success
  end

  test "should create philosopher" do
    assert_difference('Philosopher.count') do
      post philosophers_url, params: { philosopher: { name: @philosopher.name, nationality: @philosopher.nationality, university: @philosopher.university } }, as: :json
    end

    assert_response 201
  end

  test "should show philosopher" do
    get philosopher_url(@philosopher), as: :json
    assert_response :success
  end

  test "should update philosopher" do
    patch philosopher_url(@philosopher), params: { philosopher: { name: @philosopher.name, nationality: @philosopher.nationality, university: @philosopher.university } }, as: :json
    assert_response 200
  end

  test "should destroy philosopher" do
    assert_difference('Philosopher.count', -1) do
      delete philosopher_url(@philosopher), as: :json
    end

    assert_response 204
  end
end
