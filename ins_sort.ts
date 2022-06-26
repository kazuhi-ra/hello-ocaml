const insert = (a: number[], n: number): number[] => {
  if (a.length === 0) return [n]

  const [first, ...rest] = a
  if (first > n) {
    return [n, ...a]
  } else {
    return [first, ...insert(rest, n)]
  }
}

console.log(insert([], 1))
console.log(insert([1], 2))
console.log(insert([1], 1))
console.log(insert([2], 1))
console.log(insert([1, 2, 3, 4, 8, 9, 10], 6))

const insSort = (a: number[]): number[] => {
  if (a.length === 0) return []

  const [first, ...rest] = a
  return insert(insSort(rest), first)
}

console.log(insSort([]))
console.log(insSort([1]))
console.log(insSort([1, 2]))
console.log(insSort([3, 2, 1]))
console.log(insSort([1, 2, 8, 4, 3]))
