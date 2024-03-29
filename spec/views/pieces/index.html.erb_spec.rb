require 'spec_helper'

describe "pieces/index.html.erb" do
  before(:each) do
    assign(:pieces, [
      stub_model(Piece,
        :name => "Name",
        :description => "MyText"
      ),
      stub_model(Piece,
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of pieces" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
