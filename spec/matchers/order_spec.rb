require 'spec_helper'
require 'thefrontiergroup/matchers/order'

describe 'order matcher' do

  subject { elements }
  let(:elements) { [ first_element, second_element, third_element ] }
  let(:first_element) { 'A' }
  let(:second_element) { 'B' }
  let(:third_element) { 'C' }

  it { should order(second_element).after(first_element) }
  it { should_not order(first_element).after(second_element) }
  it { should order(third_element).after(first_element) }
  it { should order(third_element).after(second_element) }
end