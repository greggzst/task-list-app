require 'rails_helper'

RSpec.describe "tasks/index", type: :view do

  before do
    task1 = Task.create(name: 'do homework', done: false)
    task2 = Task.create(name: 'start dancing', done: true)
  end

  it 'displays tasks correctly' do 
    @tasks = Task.all

    render
    expect(rendered).to have_selector("div.well.task-to-do", text: 'do homework')
    expect(rendered).to have_selector("div.well.task-done", text: 'start dancing')
  end
  
end
