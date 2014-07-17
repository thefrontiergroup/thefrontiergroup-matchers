RSpec::Matchers.define :be_paginated do
  match do |object|
    object.respond_to?(:current_page) && object.respond_to?(:total_pages)
  end

  description do
    "be paginated"
  end

  failure_message_for_should do |object|
    "expected #{object.inspect} to be a paginated collection"
  end

  failure_message_for_should_not do
    "expected #{object.inspect} not to be a paginated collection"
  end
end