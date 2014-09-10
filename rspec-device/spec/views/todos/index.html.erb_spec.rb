require 'rails_helper'

RSpec.describe "todos/index", :type => :view do
  before(:each) do
    assign(:todos, [
      Todo.create!(
        :title => "Title",
        :details => "Details",
        :completed_status => ""
      ),
      Todo.create!(
        :title => "Title",
        :details => "Details",
        :completed_status => ""
      )
    ])
  end

  it "renders a list of todos" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Details".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
