Then(/^there should be a user with first_name "([^"]*)"$/) do |first_name|
  expect(User.find_by(first_name: first_name)).not_to be_nil
end