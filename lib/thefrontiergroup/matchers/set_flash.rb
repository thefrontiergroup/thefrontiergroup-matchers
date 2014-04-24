RSpec::Matchers.define :set_flash do |flash_type|
  chain :to do |message|
    @message = message
  end

  match do |response|
    if @message.present?
      flash[flash_type] == @message
    else
      flash[flash_type].present?
    end
  end

  description do
    "set flash[:#{flash_type}] to #{@message}"
  end

  failure_message_for_should do
    if @message.present?
      "expected flash[:#{flash_type}] to be #{@message}, got #{flash[flash_type]}"
    else
      "expected flash[:#{flash_type}] to be set"
    end
  end

  failure_message_for_should_not do
    if @message.present?
      "expected flash[:#{flash_type}] not to be #{@message}"
    else
      "expected flash[:#{flash_type}] not to be set"
    end
  end
end
