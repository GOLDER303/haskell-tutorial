import Data.List

primeNumbers = [3, 5, 7, 11]

morePrimes = primeNumbers ++ [13, 17, 19, 23]

morePrimes2 = 2 : morePrimes

lenPrime = length morePrimes2

revPrime = reverse morePrimes2

isListEmpty = null morePrimes2

secondPrime = morePrimes2 !! 1

firstPrime = head morePrimes2

lastPrime = last morePrimes2

primeInit = init morePrimes2 -- everything besides last value

first3Primes = take 3 morePrimes2

removedPrimes = drop 3 morePrimes2

is7InList = 7 `elem` morePrimes2

maxPrime = maximum morePrimes2

minPrime = minimum morePrimes2
