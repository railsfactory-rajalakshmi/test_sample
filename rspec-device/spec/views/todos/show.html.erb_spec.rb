require 'rails_helper'

RSpec.describe "todos/show", :type => :view do
  before(:each) do
    @todo = assign(:todo, Todo.create!(
      :title => "Title",
      :details => "Details",
      :completed_status => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Details/)
    expect(rendered).to match(//)
  end
end
