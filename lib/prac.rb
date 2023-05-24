class BankAccount
    def initialize(balance)
      @balance = balance
    end
  
    def withdraw(amount)
      validate_transaction(amount)
      perform_withdrawal(amount)
    end
  
    def deposit(amount)
      validate_transaction(amount)
      perform_deposit(amount)
    end
  
    def display_balance
      puts "Current balance: $#{@balance}"
    end
  
    private
  
    def validate_transaction(amount)
      if amount <= 0
        puts "Invalid transaction amount."
        return
      end
  
      if amount > @balance
        puts "Insufficient funds."
        return
      end
    end
  
    def perform_withdrawal(amount)
      puts "Withdrawing $#{amount}"
      @balance -= amount
    end
  
    def perform_deposit(amount)
      puts "Depositing $#{amount}"
      @balance += amount
    end
  end
  
  account = BankAccount.new(1000)
  account.display_balance
  account.withdraw(500)
  account.display_balance
  account.deposit(200)
  account.display_balance
  account.withdraw(1500)
  