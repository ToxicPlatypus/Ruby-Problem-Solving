#Find the duplicates from the array using tortorise and hare method
#Time Complexity = O(n)
#Space Complexity = O(1)

arr = [1, 2, 3, 4, 7, 5, 6, 7]

def find_duplicate(arr)
    tortoise = arr[0]
    hare = arr[arr[0]]
    while tortoise != hare
        tortoise = arr[tortoise]
        hare = arr[arr[hare]]  
    end

    tortoise = 0
    while tortoise != hare
        tortoise = arr[tortoise]
        hare = arr[hare]
    end
    return tortoise
end

puts find_duplicate(arr)
