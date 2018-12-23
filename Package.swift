// swift-tools-version:4.0
import PackageDescription
let package = Package(
	name: "SwiftString",
	products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
            .library(
                name: "SwiftString",
                targets: ["SwiftString"]),
        ],
	dependencies: [],
	targets: [
	    .target(
	        name: "SwiftString",
    	 	dependencies: [],
		path: "Sources"),
	]
)
