require 'spec_helper'

describe "blog_entries/index.html.erb" do
  before(:each) do
    assign(:blog_entries, [
      stub_model(BlogEntry,
        :title => "Title",
        :published => false,
        :body => "MyText"
      ),
      stub_model(BlogEntry,
        :title => "Title",
        :published => false,
        :body => "MyText"
      )
    ])
  end

  it "renders a list of blog_entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
