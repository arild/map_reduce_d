
import std.concurrency;
import std.stdio;


class MapReduceMaster(K2, V2, V3) {

	this() {
		
	}

	abstract V2[K2] map(string, string);
	abstract V3 reduce(K2, V2[]);
	abstract void open();
	abstract void close();
//	Tuple!(string, string) read() {}
	abstract void write(V3);
	
	void start() {
		
	}
}

//class Master {
//	IMapReduce api;
//	
//	this(IMapReduce api) {
//		api = api;
//		api.open();
//	}
//	
//	void start() {
//		writefln("starting...");
//		string data = api.read();
//		
//	}
//}

void worker() {
	
}