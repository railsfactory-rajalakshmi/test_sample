require 'rails_helper'

RSpec.describe "todos/new", :type => :view do
  before(:each) do
    assign(:todo, Todo.new(
      :title => "MyString",
      :details => "MyString",
      :completed_status => ""
    ))
  end

  it "renders new todo form" do
    render

    assert_select "form[action=?][method=?]", todos_path, "post" do

      assert_select "input#todo_title[name=?]", "todo[title]"

      assert_select "input#todo_details[name=?]", "todo[details]"

      assert_select "input#todo_completed_status[name=?]", "todo[completed_status]"
    end
  end
end
