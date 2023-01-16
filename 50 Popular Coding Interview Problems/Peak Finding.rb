=begin
    Given an non empty set of integers and return the index of a aprak element.
    This code returns the index of the peak value.
=end

def finding_peak(arr)
    left = 0 
    right = arr.length() - 1

    while left < right
        mid = (left + right) / 2
        if arr[mid] < arr[mid + 1]
            left = mid + 1
        else
            right = mid
        end
    end
    return left 
end