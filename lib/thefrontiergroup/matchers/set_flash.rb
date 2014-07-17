RSpec::Matchers.define :set_flash do |flash_type|
  chain :to do |message|
    @message = message
  end

  match do |response|
    if @message.nil?
      flash.has_key? flash_type
    else
      @message === flash[flash_type]
    end
  end

  description do
    "set flash[:#{flash_type}] to #{@message}"
  end

  failure_message_for_should do
    if @message.nil?
      "expected flash[:#{flash_type}] to be set"
    else
      "expected flash[:#{flash_type}] to be #{@message}, got #{flash[flash_type].to_s}"
    end
  end

  failure_message_for_should_not do
    if @message.nil?
      "expected flash[:#{flash_type}] not to be set"
    else
      "expected flash[:#{flash_type}] not to be #{@message}"
    end
  end
end
