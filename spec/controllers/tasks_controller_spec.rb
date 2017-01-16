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

  describe 'POST create' do
    it 'creates new task' do
      expect {post :create, params: {task: {name: 'go to the gym', done: false}}}.to change(Task, :count).by(1)
    end
  end

  describe '#get_done' do

    before(:all) do
      Task.create(id: 10 ,name: 'go all out', done: false)
      @task = Task.find(10)
    end

    it 'changes task to be done state' do
      get :get_done, params: {id: @task.id }, xhr: true
      expect(Task.find(@task.id).done?).to be true
    end
  end
end
