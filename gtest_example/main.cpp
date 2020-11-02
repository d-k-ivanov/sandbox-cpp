#include <gtest/gtest.h>

struct BankAccount
{
    int balance = 0;

    BankAccount()
    {
    }

    explicit BankAccount(const int balance) : balance{balance}
    {
    }

    void deposit(int amount)
    {
        balance += amount;
    }

    bool withdraw(int amount)
    {
        if (amount <= balance)
        {
            balance -= amount;
            return true;
        }

        return false;
    }
};

struct BankAccountTest : testing::Test
{
    BankAccount* account;

    BankAccountTest()
    {
        account = new BankAccount;
    }

    virtual ~BankAccountTest()
    {
        delete account;
    }
};

// Plain
TEST(AccountTest, BankAccountStartsEmpty)
{
    BankAccount account;
    EXPECT_EQ(0, account.balance);
}

// Fixtured
TEST_F(BankAccountTest, BankAccountStartsEmpty)
{
    EXPECT_EQ(0, account->balance);
}

TEST_F(BankAccountTest, BankAccountCanDeposit)
{
    account->deposit(100);
    EXPECT_EQ(100, account->balance);
}

struct account_state
{
    int initial_balance;
    int withdraw_amount;
    int final_balance;
    bool success;

    friend std::ostream& operator<<(std::ostream& os, const account_state& obj)
    {
        return os
            << "initial_balance: "  << obj.initial_balance
            << " withdraw_amount: " << obj.withdraw_amount
            << " final_balance: "   << obj.final_balance
            << " success: "         << obj.success;
    }
};

struct WithdawAccountTest : BankAccountTest, testing::WithParamInterface<account_state>
{
    WithdawAccountTest()
    {
        account->balance = GetParam().initial_balance;
    }
};

TEST_P(WithdawAccountTest, BankAccountFinalBalance)
{
    auto account_state = GetParam();
    auto success = account->withdraw(account_state.withdraw_amount);
    EXPECT_EQ(account_state.final_balance, account->balance);
    EXPECT_EQ(account_state.success, success);
}

INSTANTIATE_TEST_SUITE_P(Defailt, WithdawAccountTest,
    testing::Values(
        account_state{100, 50, 50, true},
        account_state{100, 200, 100, false}
    ));

int main(int argc, char* argv[])
{
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
