#This code takes a string and prints the first repeating character.
#Time complexity O(n)
#Space complexity O(n)

def RepeatingCharacter(str)
    char = str.split('')
    hash = {}
    char.each do |c|
        if hash.has_key?(c)
            return c
        else
            hash[c] = true
        end
    end
    return nil
end

# puts RepeatingCharacter(gets)

while ((p = gets) != nil)
    puts RepeatingCharacter(p)
end
