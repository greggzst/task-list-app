require 'rails_helper'

RSpec.describe TasksController, type: :controller do
  describe 'GET index' do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
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
