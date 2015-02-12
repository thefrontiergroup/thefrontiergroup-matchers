require 'spec_helper'
require 'thefrontiergroup/matchers/set_flash'

describe 'set_flash matcher' do
  subject { double(flash: {notice: 'foobar'}) }

  it { is_expected.to set_flash(:notice) }
  it { is_expected.not_to set_flash(:alert) }
  it { is_expected.to set_flash(:notice).to('foobar') }
  it { is_expected.to set_flash(:notice).to(/foo/) }
  it { is_expected.not_to set_flash(:notice).to('not foobar') }
  it { is_expected.not_to set_flash(:notice).to(/not/) }

  # When in a Rails app, `flash` in the matcher is defined on ActionDispatch::TestProcess
  # and `response` in the matcher is an ActionController::TestResponse
  # This mimics that
  def flash
    subject.flash
  end
end