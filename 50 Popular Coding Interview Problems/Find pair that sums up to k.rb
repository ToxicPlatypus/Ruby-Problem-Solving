#Here is an array and a key. Prints the array value pair which summation is equal to the key.
#Time complexity O(n)
#Space complexity O(n)

arr = [5, 9, 2, 10, 1, 10]
k = 12

hash = {}
var = false

arr.each do |num|
    if hash.has_key?(k-num)
        var = [num, k-num] 
    else
        hash[num] = true 
    end
end

puts var