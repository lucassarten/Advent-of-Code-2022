import java.io.BufferedReader
import java.io.FileReader

class Main {
    static main(args) {
        // open input file for reading
        def file = new File("input.txt")
        def reader = new BufferedReader(new FileReader(file))
        def line = reader.readLine()
        // sum for current block
        def sum = 0
        // list of sums for each block
        def counts = []
        // for each line in the file
        while (line != null) {
            // if line is blank, reset sum, track max
            if(line == "") {
                counts.add(sum)
                sum = 0
            } else {
                sum += line.toInteger()
            }
            line = reader.readLine()
        }
        // get largest 3 sums from list
        counts.sort(Comparator.reverseOrder())
        int out = counts.get(0) + counts.get(1) + counts.get(2)
        println(out)
        reader.close()
    }
}