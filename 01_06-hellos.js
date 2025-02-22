myLangs = ['javascript', 'python', 'elixir'];
// => Hello Elixir, Javascript, Python!

function hello(name) {
  console.log(`Hello ${name}!`);
}

function hellos(names) {
  there = names
    .map((n) => n[0].toUpperCase() + n.substring(1))
    .toSorted()
    .join(', ');

  hello(there);
}

hellos(myLangs);
