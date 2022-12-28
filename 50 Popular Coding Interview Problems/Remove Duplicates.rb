#Remove the duplicates from an array and print the non-duplicated numbers
#Time Complexity O(n)
#Space Complexity O(n)


arr = [4, 12, 1, 3, 1, 5, 4, 1, 6]
hash = {}

arr.each{ |c|
    if !hash.has_key?(c)
        hash[c] = true
    end
}

puts hash.keys
