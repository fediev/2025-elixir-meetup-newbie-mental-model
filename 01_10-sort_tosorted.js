// `sort` vs `toSorted`
arr1 = [2, 5, 1, 4, 3];
console.log(arr1.sort());
console.log(arr1);

arr2 = [2, 5, 1, 4, 3];
console.log(arr2.slice().sort());
console.log(arr2.toSorted()); // ES2023
console.log(arr2);
