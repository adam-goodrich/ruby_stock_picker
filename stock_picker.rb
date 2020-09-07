def stock_picker(arr)
    total_gained = 0
    index = 0
    for i in arr
        for j in arr[index..-1]
            if (j - i) > total_gained
                total_gained = j - i
                picks = [i, j]
            end
        end
        index += 1
    end
    index_of_picks = picks.map { |x| arr.find_index(x) }
    return index_of_picks
end