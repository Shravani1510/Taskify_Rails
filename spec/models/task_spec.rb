require 'rails_helper'

RSpec.describe Task, type: :model do
  it 'is valid with valid attributes' do
    task = Task.new(title: 'Test Task', description: 'This is a test task')
    expect(task).to be_valid
  end

  it 'is not valid without a title' do
    task = Task.new(title: nil)
    expect(task).to_not be_valid
  end
end
