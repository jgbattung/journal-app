require "test_helper"

class CreateCategoryTest < ActionDispatch::IntegrationTest

    test "should go to new category form and create new category" do
        get new_category_url
        assert_response :success
        assert_difference 'Category.count', 1 do
            post categories_url, params: { category: { title: 'Web Dev', details: 'Listed here are the tasks related to Web Dev' } }
            assert_response :redirect
        end
        follow_redirect!
        assert_response :success
    end
end