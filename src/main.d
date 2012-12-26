
import std.stdio;
import std.file;
import map_reduce;
import std.typecons; // tuples
import std.algorithm; // splitter
import std.array;
import std.file;


class MapReduceImpl : MapReduceMaster!(string, int, int[string]) {
	string[] lines;
	
	int[string] map(string documentId, string content) {
		writefln("string");
		writefln(documentId);
		int[string] result;
		return result;
	}
	
	int[string] reduce(string term, int[] partialCounts) {
		int[string] result;
		return result;
	} 
	
	
	void open() {
		string data = cast(string)std.file.read("src/hamlet.txt");
		this.lines = readLines(data);
		}
	
	void close() {
		
		}
	
	Tuple!(string, string) read() {
//		return this.lines.
	}
	void write(int[string]) {
		
	}
	
	string[] readLines(string input) {
	    Appender!(string[]) result;
	    foreach (line; input.splitter("\n"))
	        result.put(line);
	    return result.data;
	}
}

void main() {
	
	auto funcs = new MapReduceImpl;
	funcs.map("key", "5");
	//start(new MapReduceIoImpl());
}
