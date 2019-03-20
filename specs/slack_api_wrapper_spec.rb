require_relative "spec_helper"
require "awesome_print"

describe SlackApi do
  it "can send a valid message" do
    VCR.use_cassette("slack-posts") do
      response = SlackApi.send_msg("Hey I can post messages!", "ports-api-testing")
      expect(response).must_equal true
    end
  end
end
