CXX = clang++
CXXFLAGS = `llvm-config --cxxflags --ldflags --system-libs --libs all`

.PHONY: mc

mc: src/mc.cpp
	$(CXX) $(CXXFLAGS) src/mc.cpp -o mc
clean:
	rm mc output.o
test: mc
	./mc test/test${ID}.txt
