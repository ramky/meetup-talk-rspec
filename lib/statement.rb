class Statement
  attr_reader :customer
  def initialize(customer)
    @customer = customer
  end

  def generate_header
    "Statement for #{customer.name}"
  end
end
