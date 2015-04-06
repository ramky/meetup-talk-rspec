require 'spec_helper'

describe Statement do
  let(:name) { 'Ram'  }

  it '#generate_header' do
    customer = double('customer')
    allow(customer).to receive(:name).
      and_return(name)

    header = Statement.new(customer).generate_header

    # need example of clutter due to stubs
    # all spies are stubs in rspec-mocks
    # when you are testing side effects stubs are of no value
    # test a command method use mock
    # test a query method use stubs
    expect(customer).to have_received(:name)
    expect(header).to eq "Statement for #{name}"
  end
end
