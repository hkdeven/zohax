require 'spec_helper'

describe "Zohax::Api" do
  before :all do
    @username = "test@terracoding.com"
    @password = "zohotest"
    @api = Zohax::Api.new(@username, @password)
  end

  it "should store the auth URL" do
    @api.auth_url.should == "https://accounts.zoho.com/apiauthtoken/nb/create?SCOPE=ZohoCRM/crmapi&EMAIL_ID=test@terracoding.com&PASSWORD=zohotest"
  end

  it "should get the auth token" do
    @api.get_token
    @api.auth_token.should_not be_nil
  end
end
