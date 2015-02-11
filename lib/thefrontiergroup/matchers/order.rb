RSpec::Matchers.define :order do |origin|

  chain :after do |other|
    @after = other
  end

  match do |actual|
    @result = true

    if @after
      actual.each do |item|

        if item == origin
          @result = false
          break
        end
        break if item == @after
      end
    end
    @result
  end

  description do
    "be in the correct order"
  end

  failure_message do |actual|
    "expected\n'#{origin.inspect}'\n to be after:\n'#{@after.inspect}'\n in:\n'#{actual.inspect}'"
  end

  failure_message_when_negated do |actual|
    "expected\n'#{origin.inspect}'\n to be before:\n'#{@after.inspect}'\n in:\n'#{actual.inspect}'"
  end
end