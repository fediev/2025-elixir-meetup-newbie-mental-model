def fibo_loop(n):
    a, b = 0, 1
    for _ in range(n):
        a, b = b, a + b
    return a


for i in range(0, 10):
    print(fibo_loop(i))
