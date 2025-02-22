import functools

num_calls = 0


def log_call():
    global num_calls
    num_calls += 1
    print("called", num_calls)


@functools.cache
def fibo(n):
    log_call()

    if n <= 1:
        return n

    return fibo(n - 1) + fibo(n - 2)


for i in range(0, 10):
    print(fibo(i))
