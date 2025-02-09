#original list
og.list <- c(6,10,14,15,21,22,26,33,34,35,38,39,46,51,55,57,58,62,65,69,75,77,82,85,86,87,91,93,94,95)

#list out prime nums less than 100
primes <- c(2,3,5,7,11,13,17,19,23,29,31,37,41,43,47)

#multiply them by each other, and add to a new vector (length of 30) if <100
toReturn <- numeric(30)
num <- 0
for (i in 1:length(primes)){
  for (j in 1:length(primes)){
    toCheck <-primes[i]*primes[j]
    if (toCheck<100 & !(toCheck%in%toReturn) & i!=j){
      toReturn[num] = toCheck
      num= num+1
    }
  }
}

(toReturn)
(length(toReturn))

#check which numbers are different between the two vectors
wrong.num <- setdiff(og.list,toReturn)
missing.num <- setdiff(toReturn, og.list)

(wrong.num)
(missing.num)

#replace wrong number with correct number
index <- which(og.list==wrong.num)
toReturn[index] = missing.num

(index)
(toReturn)