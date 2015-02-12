require 'spec_helper'
require 'thefrontiergroup/matchers/response_status_matchers'
require 'ostruct'

[
  [ "be_bad_request", 400 ],
  [ "be_forbidden", 403 ],
  [ "be_not_found", 404 ],
  [ "be_unauthorised", 401 ],
  [ "be_unprocessable_entity", 422 ],
  [ "be_internal_server_error", 500 ]
].each do |matcher, status|

  describe "#{matcher} matcher" do
    subject { request }
    let(:request) { double }
    let(:response) { OpenStruct.new(status: returned_status) }

    before { allow(request).to receive(:status) }

    context "when response status is #{status}" do
      let(:returned_status) { status }
      it { is_expected.to eval(matcher) }
    end

    context "when response status is not #{status}" do
      let(:returned_status) { 123 }
      it { is_expected.not_to eval(matcher) }
    end
  end
end