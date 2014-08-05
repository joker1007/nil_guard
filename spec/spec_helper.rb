$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'nil_guard'

RSpec.configure do |config|
  config.order = :random

  config.mock_with :rspec do |mocks|
    # Prevents you from mocking or stubbing a method that does not exist on
    # a real object. This is generally recommended.
    mocks.verify_partial_doubles = true
  end
end
