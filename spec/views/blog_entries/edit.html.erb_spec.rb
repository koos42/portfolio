require 'spec_helper'

describe "blog_entries/edit.html.erb" do
  before(:each) do
    @blog_entry = assign(:blog_entry, stub_model(BlogEntry,
      :title => "MyString",
      :published => false,
      :body => "MyText"
    ))
  end

  it "renders the edit blog_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blog_entries_path(@blog_entry), :method => "post" do
      assert_select "input#blog_entry_title", :name => "blog_entry[title]"
      assert_select "input#blog_entry_published", :name => "blog_entry[published]"
      assert_select "textarea#blog_entry_body", :name => "blog_entry[body]"
    end
  end
end
