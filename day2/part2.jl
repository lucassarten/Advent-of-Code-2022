# open input file for reading
open("input.txt") do file
    lines = readlines(file)

    pointsShape = Dict{String,Int64}("A" => 1, "B" => 2, "C" => 3)
    pointsOutcome = Dict{String,Int64}("X" => 0, "Y" => 3, "Z" => 6)
    # precomputed outcomes
    movesA = Dict{String,String}("X" => "C", "Y" => "A", "Z" => "B")
    movesB = Dict{String,String}("X" => "A", "Y" => "B", "Z" => "C")
    movesC = Dict{String,String}("X" => "B", "Y" => "C", "Z" => "A")

    total = 0
    # for each line in the file
    for line in lines
        # split the line
        words = split(line)
        first = words[1]
        second = words[2]
        # now we can just look it up!
        if first == "A"
            total += pointsShape[movesA[second]] + pointsOutcome[second]
        elseif first == "B"
            total += pointsShape[movesB[second]] + pointsOutcome[second]
        else
            total += pointsShape[movesC[second]] + pointsOutcome[second]
        end
    end
    println(total)
end