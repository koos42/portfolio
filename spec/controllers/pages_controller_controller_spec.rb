require 'spec_helper'

describe PagesControllerController do

  describe "GET 'frontpage'" do
    it "returns http success" do
      get 'frontpage'
      response.should be_success
    end
  end

end
