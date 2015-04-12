require 'spec_helper'

describe Signup do
  it '#save' do
    account_name = 'Ram Iyer'
    email        = 'ramky.iyer@gmail.com'
    message      = "Created user #{email} with #{account_name}"
    logger       = FakeLogger.new
    signup = Signup.new(account_name: account_name, email: email, logger: logger)

    result = signup.save

    expect(result).to eq(true)
    expect(logger.status).to eq(:info)
    expect(logger.message).to eq(message)
  end
end
