RSpec.configure do |config|
  config.include Warden::Test::Helpers
  config.include Devise::TestHelpers, type: [:request, :view]
  config.after :each do
    Warden.test_reset!
  end
end