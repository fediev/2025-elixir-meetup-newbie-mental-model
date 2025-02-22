num_calls = 0


def log_call():
    global num_calls
    num_calls += 1
    print("called", num_calls)


memo = {}


def fibo_memo(n):
    log_call()

    if n in memo:
        return memo[n]

    if n <= 1:
        return n

    memo[n] = fibo_memo(n - 1) + fibo_memo(n - 2)
    return memo[n]


for i in range(0, 5):
    print(fibo_memo(i))
