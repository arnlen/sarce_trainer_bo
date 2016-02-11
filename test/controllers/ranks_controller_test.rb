require 'test_helper'

class RanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rank = ranks(:one)
  end

  test "should get index" do
    get ranks_url
    assert_response :success
  end

  test "should get new" do
    get new_rank_url
    assert_response :success
  end

  test "should create rank" do
    assert_difference('Rank.count') do
      post ranks_url, params: { rank: { image_url: @rank.image_url, name: @rank.name, short_name: @rank.short_name } }
    end

    assert_redirected_to rank_path(Rank.last)
  end

  test "should show rank" do
    get rank_url(@rank)
    assert_response :success
  end

  test "should get edit" do
    get edit_rank_url(@rank)
    assert_response :success
  end

  test "should update rank" do
    patch rank_url(@rank), params: { rank: { image_url: @rank.image_url, name: @rank.name, short_name: @rank.short_name } }
    assert_redirected_to rank_path(@rank)
  end

  test "should destroy rank" do
    assert_difference('Rank.count', -1) do
      delete rank_url(@rank)
    end

    assert_redirected_to ranks_path
  end
end