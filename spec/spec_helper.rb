require 'yaml'
require 'active_support/all'
require 'action_view'
require 'formtastic'

module Rails
  unless respond_to?(:application)
    def self.application
      @application ||= Struct.new(:config).new(
        Struct.new(:action_mailer).new(nil)
      )
    end
  end
end

require 'formtastic/trix'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
