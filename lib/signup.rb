class Signup
  def initialize(account_name:, email:, logger:)
    @account_name = account_name
    @email        = email
    @logger       = logger
  end

  def save
    # ...
    if success?
      @logger.info("Created user #{@email} with #{@account_name}")
      true
    else
      @logger.error("Error for #{email} with #{@account_name}")
      false
    end
  end

  def success?
    true
  end
end
