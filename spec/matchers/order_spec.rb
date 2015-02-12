require 'spec_helper'
require 'thefrontiergroup/matchers/order'

describe 'order matcher' do

  subject { elements }
  let(:elements) { [ first_element, second_element, third_element ] }
  let(:first_element) { 'A' }
  let(:second_element) { 'B' }
  let(:third_element) { 'C' }

  it { is_expected.to order(second_element).after(first_element) }
  it { is_expected.not_to order(first_element).after(second_element) }
  it { is_expected.to order(third_element).after(first_element) }
  it { is_expected.to order(third_element).after(second_element) }
end