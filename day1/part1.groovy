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
        // max sum of any block
        def max = 0
        // for each line in the file
        while (line != null) {
            // if line is blank, reset sum, track max
            if(line == "") {
                if(sum > max) {
                    max = sum
                    sum = 0
                }
            } else {
                sum += line.toInteger()
            }
            line = reader.readLine()
        }
        println(max)
        reader.close()
    }
}