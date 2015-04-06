require 'spec_helper'

describe Statement do
  let(:name) { 'Ram' }

  it '#generate_header' do
    customer = double('customer')
    expect(customer).to receive(:name).
      and_return(name)

    header = Statement.new(customer).generate_header

    expect(header).to eq "Statement for #{name}"
  end
end
