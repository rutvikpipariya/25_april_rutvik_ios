import Foundation
struct BankAccount {
    var accNo: Int
    var accName: String
    var balance: Double
}
var accounts: [BankAccount] = []
accounts.append(BankAccount(accNo: 1, accName: "Suresh", balance: 1000.0))
accounts.append(BankAccount(accNo: 2, accName: "Mukesh", balance: 2000.0))
accounts.append(BankAccount(accNo: 3, accName: "Mahesh", balance: 1500.0))
accounts.append(BankAccount(accNo: 4, accName: "Ramesh", balance: 3000.0))
accounts.append(BankAccount(accNo: 5, accName: "Naresh", balance: 2500.0))
accounts.append(BankAccount(accNo: 6, accName: "Mavji", balance: 4500.0))
accounts.append(BankAccount(accNo: 7, accName: "Nanji", balance: 4000.0))
accounts.append(BankAccount(accNo: 8, accName: "Lalji", balance: 3500.0))
accounts.append(BankAccount(accNo: 9, accName: "Ramji", balance: 8000.0))
accounts.append(BankAccount(accNo: 10, accName: "Manji", balance: 5500.0))
accounts[0].balance += 2000.0
accounts[1].balance += 1000.0
accounts[2].balance += 1500.0
accounts[4].balance += 500.0
accounts[5].balance -= 1500.0
accounts[6].balance -= 1000.0
accounts[7].balance -= 500.0
accounts[8].balance -= 5000.0
accounts[9].balance -= 2500.0
for account in accounts {
    print("Account Number: \(account.accNo)")
    print("Account Holder Name: \(account.accName)")
    print("Balance: \(account.balance)\n")
}
