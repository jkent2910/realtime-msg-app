require 'rails_helper'

RSpec.describe "welcome/index.html.erb", type: :view do
  it "says 'Sign up'" do
    render
    assert_select "h2", text: 'Sign up'
  end
end