ENV["RAILS_ENV"] ||= 'test'

require File.expand_path("../../lib/metova/dummy/config/environment.rb",  __FILE__)
ActiveRecord::Migrator.migrations_paths = [File.expand_path("../../lib/metova/dummy/db/migrate", __FILE__)]

require 'rspec/rails'
require 'responders'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.global_fixtures = :all
  config.fixture_path = File.expand_path("../fixtures", __FILE__)
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.before do
    @request.try { |req| req.env['HTTP_ACCEPT'] = 'application/json' }
  end

end