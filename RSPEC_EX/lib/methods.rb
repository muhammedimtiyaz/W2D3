class Array
    def my_uniq
        result_arr = []
        self.each do |ele|
            result_arr << ele unless result_arr.include?(ele)
        end
        result_arr
        # self.uniq
    end

    def two_sum(target)
        indices = []
        each_with_index do |num1, i1|
            each_with_index do |num2, i2|
                if i1 < i2
                    indices << [i1, i2] if num1 + num2 == target
                end
            end
        end
        indices
    end

    def my_transpose
        transposed_arr = []
        each.with_index do |row, i|
            sub_arr = []
            each do |row2|
                sub_arr << row2[i]
            end
            transposed_arr << sub_arr
        end
        transposed_arr
    end
end

def stock_picker(days)
    days_hash = {}

    days.each.with_index do |day1, i1|
        days.each.with_index do |day2, i2|
            if i1 < i2
                days_hash[[i1,i2]] = day2 - day1
            end
        end
    end
    sorted_pairs = days_hash.sort_by { |k,v| v }
    sorted_pairs.last.first    
end