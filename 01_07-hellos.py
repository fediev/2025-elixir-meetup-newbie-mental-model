my_langs = ["javascript", "python", "elixir"]
# => Hello Elixir, Javascript, Python!


def hello(name):
    print(f"Hello {name}!")


def hellos(names):
    there = ", ".join([name.capitalize() for name in sorted(names)])
    hello(there)


hellos(my_langs)
