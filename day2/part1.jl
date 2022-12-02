# open input file for reading
open("input.txt") do file
    lines = readlines(file)

    moves = Dict{String,String}("X" => "A", "Y" => "B", "Z" => "C")
    vals = Dict{String,Int64}("A" => 0, "B" => 1, "C" => 2)
    points = Dict{String,Int64}("X" => 1, "Y" => 2, "Z" => 3)

    total = 0
    # for each line in the file
    for line in lines
        # split the line
        words = split(line)
        first = words[1]
        second = words[2]
        # right win 
        if (vals[first] + 1) % 3 == vals[moves[second]]
            total += points[second] + 6
        # draw
        elseif first == moves[second]
            total += points[second] + 3
        # left win
        else
            total += points[second]
        end
    end
    println(total)
end