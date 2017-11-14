def sudoku2(grid)
    line_count = 0
    character_count = 0
    line_have_unique_values = true
    grid.each do |line|
        line_count += 1
        characters_per_line = []
        line.each do |character, inx|
            character_count += 1
            if character != "."
                characters_per_line << character
            end
        end
        if characters_per_line != characters_per_line.uniq
            return false
        end
        if character_count != 9
            return false
        end
        character_count = 0
    end
    if line_count != 9
        return false
    end

    grid.transpose.each do |line|
        characters_per_line = []
        line.each do |character, inx|
            if character != "."
                characters_per_line << character
            end
        end
        if characters_per_line != characters_per_line.uniq
            return false
        end
    end


    true
end