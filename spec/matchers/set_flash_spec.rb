require 'spec_helper'
require 'thefrontiergroup/matchers/set_flash'

describe 'set_flash matcher' do
  subject { double(flash: {notice: 'foobar'}) }

  it { should set_flash(:notice) }
  it { should_not set_flash(:alert) }
  it { should set_flash(:notice).to('foobar') }
  it { should set_flash(:notice).to(/foo/) }
  it { should_not set_flash(:notice).to('not foobar') }
  it { should_not set_flash(:notice).to(/not/) }

  # When in a Rails app, `flash` in the matcher is defined on ActionDispatch::TestProcess
  # and `response` in the matcher is an ActionController::TestResponse
  # This mimics that
  def flash
    subject.flash
  end
end