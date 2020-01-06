n_line = [
    "Times Square",
    "34th",
    "28th",
    "23rd",
    "Union Square",
    "8th"
]

l_line = [
    "8th",
    "6th",
    "Union Square",
    "3rd",
    "1st"
]

six_line = [
    "Grand Central",
    "33rd",
    "28th",
    "23rd",
    "Union Square",
    "Astor Place"
]

def plan_trip(line1, stop1, line2, stop2)
    x = 0
    stop1_index = -1
    join1_index = -1
    stop2_index = -1
    join2_index = -1
    count = 0

    # get the indexes

    while x < line1.length
        if line1[x] == stop1
            stop1_index = x
        elsif line1[x] == "Union Square"
            join1_index = x
        end
        x+=1
    end

    x = 0
    while x < line2.length
        if line2[x] == stop2
            stop2_index = x
        elsif line2[x] == "Union Square"
            join2_index = x
        end
        x+=1
    end

    x = 0

    # trace the first line

    if stop1_index <= join1_index
        for x in stop1_index..join1_index-1
            count+=1
            puts line1[x]
        end
    elsif stop1_index > join1_index
        x = join1_index
        for x in join1_index..stop1_index-1
            count+=1
            puts line1[x]
        end
    end

    x = 0

    puts "Change at Union Square"

    # trace the second line

    temp_array = []
    
    if stop2_index <= join2_index
        for x in stop2_index..join2_index
            count+=1
            if line2[x] != 'Union Square'
                temp_array.push(line2[x])
            end
        end
    elsif stop2_index > join2_index
        x = join2_index
        for x in join2_index..stop2_index
            count+=1
            if line2[x] != 'Union Square'
                temp_array.push(line2[x])
            end
        end
    end

    temp_array.reverse.each do |el,index|
            puts el
    end
    puts "Stops: #{count}"
end

plan_trip(n_line, "Times Square", six_line, '33rd')