require 'rails_helper'

RSpec.describe Task, type: :model do

  context 'Validation' do

    subject { described_class.new(name: 'test task', done: nil) }

    it 'is valid with valid attributes' do
      subject.name = 'My task'
      subject.done = false;
      expect(subject).to be_valid
    end

    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid when name too short' do
      subject.name = 'Tes'
      expect(subject).to_not be_valid 
    end

    it 'is not valid when name too long' do
      subject.name = 'develop photos and go to the cinema'
      expect(subject).to_not be_valid
    end

    it 'is not valid when same name' do
      subject.name = 'my task'
      subject.save
      same_name = Task.new(name: 'my task')
      expect(same_name).to_not be_valid
    end

    it 'is not valid when done nil' do
      expect(subject).to_not be_valid
    end
  end
end 
