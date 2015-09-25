RSpec.configure do |c|
  c.fail_fast = true
  c.color = true
  c.mock_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
  c.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end
