function isPrime(n) {
  if (n < 2) {
    return false;
  } else if (n === 2) {
    return true;
  } else if (n % 2 === 0) {
    return false;
  }

  for (let i = 3; i <= Math.sqrt(n); i++) {
    if (n % i === 0) return false;
  }
  return true;
}

for (let i = 0; i < 30; i++) {
  if (isPrime(i)) {
    console.log(i);
  }
}
