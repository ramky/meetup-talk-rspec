require 'spec_helper'

describe Statement do
  let(:name) { 'Ram' }

  it '#generate_header' do
    # Setup
    customer = double('name')
    allow(customer).to receive(:name).
      and_return(name)

    # Exercise
    header = Statement.new(customer).generate_header

    # Validation
    expect(header).to eq "Statement for #{name}"
  end
end
