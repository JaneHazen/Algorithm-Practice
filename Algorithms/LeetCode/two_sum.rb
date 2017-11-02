def two_sum(nums, target)
    search = {}
    nums.each_with_index do |item,index|
        i = search[target-item]
        return [i, index] if i != nil
        search[item] = index
    end
end

nums = [3,2,4]
target = 6
p two_sum(nums, target)