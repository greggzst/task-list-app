require 'rails_helper'

RSpec.describe TasksController, type: :controller do
  describe 'GET index' do
  end

  describe 'GET new' do
    it 'assigns new task to @task' do
      get :new, params: {}, xhr: true
      expect(assigns(:task)).to be_a_new(Task)
    end
  end

  describe 'Create task' do
  end
end
