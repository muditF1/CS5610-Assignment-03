defmodule Practice.Factor do

  def factor(n) do
    {num1, _} = Integer.parse(n)
    list = []
    primeList = []
    factor(num1,num1,list)
    # Commenting out as the full implementation was not working
    # listLength = length(list)
    # prime(list,primelist,listLength)
    # IO.inspect primeList, label: "The list is"
    # prime(list,primeList)
  end

  # Function to get the list of prime numbers from the factors list
  def prime(list,primeList,listLength) do
    [head | tail] = list
    maxCheck = div(head,2)
    primeCheck(head,maxCheck,primeList)
    list = tail
    listLength = listLength - 1
    prime(list,primeList,listLength)

  end

  def prime(list,primeList,listLength) when listLength == 1 do
    primeList
  end

  # Function to get the list of all the factors of a given number
  def factor(num1, start, list) when start>0 do
        if rem(num1,start) == 0 do
          list = list ++ [start]
          start = start - 1
          factor(num1, start, list)
        else
          start = start - 1
          factor(num1, start, list)
    end
  end

  def factor(num1, start, list) when start == 0 do
    list
  end

  # Function to check if a number is prime number or not
  def primeCheck(num, maxCheck, primeList) when maxCheck >=2 do
    # maxCheck = div(num, 2)
    if rem(num, maxCheck) == 0 do
    else
      maxCheck = maxCheck-1
      primeCheck(num, maxCheck, primeList)
    end
  end

  def primeCheck(num, maxCheck,primeList) when maxCheck == 1 do
    primeList = primeList ++ [num]
  end
end
