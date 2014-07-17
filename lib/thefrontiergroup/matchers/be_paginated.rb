RSpec::Matchers.define :be_paginated do
  match do |object|
    object.respond_to?(:current_page) && object.respond_to?(:total_pages)
  end

  description do
    "be paginated"
  end

  failure_message do |object|
    "expected #{object.inspect} to be a paginated collection"
  end

  failure_message_when_negated do
    "expected #{object.inspect} not to be a paginated collection"
  end
end