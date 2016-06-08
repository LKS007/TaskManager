require 'test_helper'

class TasksControllerTest < ActionController::TestCase
	setup do
    @task = create :task
    @attrs = attributes_for :task
  end

  def test_index
     get :index
     assert_response :success
   end
 
   def test_new
     get :new
     assert_response :success
   end

   def test_create
    assert_difference('Task.count') do
      post :create, task: @attrs
    end
     assert_redirected_to task_path(assigns(:task))
  end
 

   def test_show
     get :show, id: @task.id
     assert_response :success
   end
 
   def test_edit
     get :edit, id: @task.id
     assert_response :success
   end
 
   def test_update
     put :update, id: @task.id, task: @attrs
     assert_response :redirect
   end
 
   def test_destroy
     assert_difference('Task.count', -1) do
      delete :destroy, id: @task.id
    end
    assert_redirected_to tasks_path
   end 

end
