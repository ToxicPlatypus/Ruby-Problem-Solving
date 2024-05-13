# @param {String} s
# @return {String}
def frequency_sort(s)
    arr = s.split('').sort
    return arr.size
end

p(frequency_sort('aMarMksdkk'))