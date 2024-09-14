// The 'token_15307' program.
program token_15307.aleo {
    record Token {
        owner: address,
        amount: u64
    }

    transition mint(balance: u64) -> Token {
        return Token {
            owner: self.caller,
            amount: balance
        };
    }

    transition transfer(token: Token, receiver: address, amount: u64) -> (Token, Token) {
        assert_eq(token.amount.gte(amount), true);

        let receiver_record: Token = Token {
            owner: receiver,
            amount: amount
        };

        let caller_record: Token = Token {
            owner: self.caller,
            amount: token.amount.sub(amount)
        };

        return (caller_record, receiver_record);
    }

    transition balance_of(token: Token) -> u64 {
        return token.amount;
    }

}
