require "test_helper"

class KittensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kitten = kittens(:one)
  end

  test "should get index" do
    get kittens_url, as: :json
    assert_response :success
  end

  test "should create kitten" do
    assert_difference("Kitten.count") do
      post kittens_url, params: { kitten: { age: @kitten.age, cuteness: @kitten.cuteness, name: @kitten.name, softness: @kitten.softness } }, as: :json
    end

    assert_response :created
  end

  test "should show kitten" do
    get kitten_url(@kitten), as: :json
    assert_response :success
  end

  test "should update kitten" do
    patch kitten_url(@kitten), params: { kitten: { age: @kitten.age, cuteness: @kitten.cuteness, name: @kitten.name, softness: @kitten.softness } }, as: :json
    assert_response :success
  end

  test "should destroy kitten" do
    assert_difference("Kitten.count", -1) do
      delete kitten_url(@kitten), as: :json
    end

    assert_response :no_content
  end
end
