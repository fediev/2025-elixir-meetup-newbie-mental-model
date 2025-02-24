myLangs = ['javascript', 'python', 'elixir'];
// => Hello Elixir, Javascript, Python!

function hello(name) {
  console.log(`Hello ${name}!`);
}

function hellos(names) {
  const there = names
    .map((name) => name[0].toUpperCase() + name.substring(1))
    .toSorted()
    .join(', ');

  hello(there);
}

hellos(myLangs);
