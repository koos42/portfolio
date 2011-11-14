require 'spec_helper'

describe "pieces/edit.html.erb" do
  before(:each) do
    @piece = assign(:piece, stub_model(Piece,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit piece form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pieces_path(@piece), :method => "post" do
      assert_select "input#piece_name", :name => "piece[name]"
      assert_select "textarea#piece_description", :name => "piece[description]"
    end
  end
end
