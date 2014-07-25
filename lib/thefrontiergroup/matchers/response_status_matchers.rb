def define_status_code_matcher(name, status)
  RSpec::Matchers.define "be_#{name}" do
    match do
      subject
      response.status == status
    end

    description do
      "have the HTTP status code #{status}"
    end

    failure_message_for_should do |actual|
      "expected HTTP status code to be #{status} but was #{actual.status}"
    end

    failure_message_for_should_not do
      "expected HTTP status code not to be #{status}"
    end
  end
end

[
  [ "bad_request", 400 ],
  [ "forbidden", 403 ],
  [ "not_found", 404 ],
  [ "unauthorised", 401 ],
  [ "unprocessable_entity", 422 ],
  [ "internal_server_error", 500 ]
].each do |name, status|
  define_status_code_matcher(name, status)
end