default:
	haxe unit.hxml
	neko build/neko_test.n

run-tests:
	haxe unit.hxml
	neko build/neko_test.n
	./build/cpp_test/TestMain

