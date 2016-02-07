When /^the client requests GET (.*)$/ do |path|
  get(path)
end

Then /^a (#{CAPTURE_STATUS}) status code is returned$/ do |status|
  expect(last_response.status).to eq status
end

Then /^the response should be JSON:$/ do |json|
  expect(JSON.parse(last_response.body)).to eq JSON.parse(json)
end
