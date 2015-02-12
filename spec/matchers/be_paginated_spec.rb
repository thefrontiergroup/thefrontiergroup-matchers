require 'spec_helper'
require 'thefrontiergroup/matchers/be_paginated'

class PaginatedUser
  class << self
    def current_page
      1
    end

    def total_pages
      1
    end
  end
end

class NonPaginatedUser
end

describe 'be_paginated matcher' do

  subject { resource }

  context "when resource responds to pagination methods" do
    let(:resource) { PaginatedUser }
    it { is_expected.to be_paginated }
  end

  context "when resource does not respond to pagination methods" do
    let(:resource) { NonPaginatedUser }
    it { is_expected.not_to be_paginated }
  end
end