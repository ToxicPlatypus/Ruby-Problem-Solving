#Outputs the maximum subarray of a given array.
#Time Complexity - O(n)
#Space Complexity - O(1)

arr = [2, 3, -8, 4, 5, -8, 9, 9]

def maximum_subarray(arr)
    local_sum = 0
    global_sum = -Float::INFINITY
    
    arr.each{|num|
        local_sum = [num, local_sum + num].max
        global_sum = [global_sum, local_sum].max
        # puts "Local #{local_sum} Global #{global_sum}"
    }
    return global_sum
end

puts maximum_subarray(arr)