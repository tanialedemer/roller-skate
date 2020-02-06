require 'test_helper'

class CompulsoryFiguresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compulsory_figure = compulsory_figures(:one)
  end

  test "should get index" do
    get compulsory_figures_url
    assert_response :success
  end

  test "should get new" do
    get new_compulsory_figure_url
    assert_response :success
  end

  test "should create compulsory_figure" do
    assert_difference('CompulsoryFigure.count') do
      post compulsory_figures_url, params: { compulsory_figure: { description: @compulsory_figure.description } }
    end

    assert_redirected_to compulsory_figure_url(CompulsoryFigure.last)
  end

  test "should show compulsory_figure" do
    get compulsory_figure_url(@compulsory_figure)
    assert_response :success
  end

  test "should get edit" do
    get edit_compulsory_figure_url(@compulsory_figure)
    assert_response :success
  end

  test "should update compulsory_figure" do
    patch compulsory_figure_url(@compulsory_figure), params: { compulsory_figure: { description: @compulsory_figure.description } }
    assert_redirected_to compulsory_figure_url(@compulsory_figure)
  end

  test "should destroy compulsory_figure" do
    assert_difference('CompulsoryFigure.count', -1) do
      delete compulsory_figure_url(@compulsory_figure)
    end

    assert_redirected_to compulsory_figures_url
  end
end
