require 'spec_helper'

describe "blog_entries/new.html.erb" do
  before(:each) do
    assign(:blog_entry, stub_model(BlogEntry,
      :title => "MyString",
      :published => false,
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new blog_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blog_entries_path, :method => "post" do
      assert_select "input#blog_entry_title", :name => "blog_entry[title]"
      assert_select "input#blog_entry_published", :name => "blog_entry[published]"
      assert_select "textarea#blog_entry_body", :name => "blog_entry[body]"
    end
  end
end
