//
//  StringURLTests.swift
//  SwiftString
//
//  Created by thislooksfun on 1/3/17.
//
//

import XCTest

@testable import SwiftString

class StringURLTests: XCTestCase {
	
	let rootPathToDir =         "/foo/bar/baz/"
	let rootPathToDirNoTrail =  "/foo/bar/baz"
	let rootPathToFile =        "/foo/bar/baz.txt"
	let rootPathSingleLetters = "/f/b/z"
	
	let relPathToDir =         "foo/bar/baz/"
	let relPathToDirNoTrail =  "foo/bar/baz"
	let relPathToFile =        "foo/bar/baz.txt"
	let relPathSingleLetters = "f/b/z"
	
	let randomString = "Quick brown fox, or something."
	
	func testParent() {
		let resultRootPathToDir = rootPathToDir.parent
		XCTAssertNotNil(resultRootPathToDir)
		XCTAssertEqual(resultRootPathToDir, "/foo/bar")
		
		let resultRootPathToDirNoTrail = rootPathToDirNoTrail.parent
		XCTAssertNotNil(resultRootPathToDirNoTrail)
		XCTAssertEqual(resultRootPathToDirNoTrail, "/foo/bar")
		
		let resultRootPathToFile = rootPathToFile.parent
		XCTAssertNotNil(resultRootPathToFile)
		XCTAssertEqual(resultRootPathToFile, "/foo/bar")
		
		let resultRootPathSingleLetters = rootPathSingleLetters.parent
		XCTAssertNotNil(resultRootPathSingleLetters)
		XCTAssertEqual(resultRootPathSingleLetters, "/f/b")
		
		let resultRelPathToDir = relPathToDir.parent
		XCTAssertNotNil(resultRelPathToDir)
		XCTAssertEqual(resultRelPathToDir, "foo/bar")
		
		let resultRelPathToDirNoTrail = relPathToDirNoTrail.parent
		XCTAssertNotNil(resultRelPathToDirNoTrail)
		XCTAssertEqual(resultRelPathToDirNoTrail, "foo/bar")
		
		let resultRelPathToFile = relPathToFile.parent
		XCTAssertNotNil(resultRelPathToFile)
		XCTAssertEqual(resultRelPathToFile, "foo/bar")
		
		let resultRelPathSingleLetters = relPathSingleLetters.parent
		XCTAssertNotNil(resultRelPathSingleLetters)
		XCTAssertEqual(resultRelPathSingleLetters, "f/b")
		
		let resultRandomString = randomString.parent
		XCTAssertNil(resultRandomString)
	}
	
	func testFile() {
		let resultRootPathToDir = rootPathToDir.file
		XCTAssertNotNil(resultRootPathToDir)
		XCTAssertEqual(resultRootPathToDir, "baz")
		
		let resultRootPathToDirNoTrail = rootPathToDirNoTrail.file
		XCTAssertNotNil(resultRootPathToDirNoTrail)
		XCTAssertEqual(resultRootPathToDirNoTrail, "baz")
		
		let resultRootPathToFile = rootPathToFile.file
		XCTAssertNotNil(resultRootPathToFile)
		XCTAssertEqual(resultRootPathToFile, "baz.txt")
		
		let resultRootPathSingleLetters = rootPathSingleLetters.file
		XCTAssertNotNil(resultRootPathSingleLetters)
		XCTAssertEqual(resultRootPathSingleLetters, "z")
		
		let resultRelPathToDir = relPathToDir.file
		XCTAssertNotNil(resultRelPathToDir)
		XCTAssertEqual(resultRelPathToDir, "baz")
		
		let resultRelPathToDirNoTrail = relPathToDirNoTrail.file
		XCTAssertNotNil(resultRelPathToDirNoTrail)
		XCTAssertEqual(resultRelPathToDirNoTrail, "baz")
		
		let filetRelPathToFile = relPathToFile.file
		XCTAssertNotNil(filetRelPathToFile)
		XCTAssertEqual(filetRelPathToFile, "baz.txt")
		
		let resultRelPathSingleLetters = relPathSingleLetters.file
		XCTAssertNotNil(resultRelPathSingleLetters)
		XCTAssertEqual(resultRelPathSingleLetters, "z")
		
		let resultRandomString = randomString.file
		XCTAssertNil(resultRandomString)
	}
	
	func testFileName() {
		let resultRootPathToDir = rootPathToDir.fileName
		XCTAssertNotNil(resultRootPathToDir)
		XCTAssertEqual(resultRootPathToDir, "baz")
		
		let resultRootPathToDirNoTrail = rootPathToDirNoTrail.fileName
		XCTAssertNotNil(resultRootPathToDirNoTrail)
		XCTAssertEqual(resultRootPathToDirNoTrail, "baz")
		
		let resultRootPathToFile = rootPathToFile.fileName
		XCTAssertNotNil(resultRootPathToFile)
		XCTAssertEqual(resultRootPathToFile, "baz")
		
		let resultRootPathSingleLetters = rootPathSingleLetters.fileName
		XCTAssertNotNil(resultRootPathSingleLetters)
		XCTAssertEqual(resultRootPathSingleLetters, "z")
		
		let resultRelPathToDir = relPathToDir.fileName
		XCTAssertNotNil(resultRelPathToDir)
		XCTAssertEqual(resultRelPathToDir, "baz")
		
		let resultRelPathToDirNoTrail = relPathToDirNoTrail.fileName
		XCTAssertNotNil(resultRelPathToDirNoTrail)
		XCTAssertEqual(resultRelPathToDirNoTrail, "baz")
		
		let filetRelPathToFile = relPathToFile.fileName
		XCTAssertNotNil(filetRelPathToFile)
		XCTAssertEqual(filetRelPathToFile, "baz")
		
		let resultRelPathSingleLetters = relPathSingleLetters.fileName
		XCTAssertNotNil(resultRelPathSingleLetters)
		XCTAssertEqual(resultRelPathSingleLetters, "z")
		
		let resultRandomString = randomString.fileName
		XCTAssertNil(resultRandomString)
	}
	
	func testExtension() {
		let resultRootPathToDir = rootPathToDir.extension
		XCTAssertNil(resultRootPathToDir)
		
		let resultRootPathToDirNoTrail = rootPathToDirNoTrail.extension
		XCTAssertNil(resultRootPathToDirNoTrail)
		
		let resultRootPathToFile = rootPathToFile.extension
		XCTAssertNotNil(resultRootPathToFile)
		XCTAssertEqual(resultRootPathToFile, "txt")
		
		let resultRootPathSingleLetters = rootPathSingleLetters.extension
		XCTAssertNil(resultRootPathSingleLetters)
		
		let resultRelPathToDir = relPathToDir.extension
		XCTAssertNil(resultRelPathToDir)
		
		let resultRelPathToDirNoTrail = relPathToDirNoTrail.extension
		XCTAssertNil(resultRelPathToDirNoTrail)
		
		let filetRelPathToFile = relPathToFile.extension
		XCTAssertNotNil(filetRelPathToFile)
		XCTAssertEqual(filetRelPathToFile, "txt")
		
		let resultRelPathSingleLetters = relPathSingleLetters.extension
		XCTAssertNil(resultRelPathSingleLetters)
		
		let resultRandomString = randomString.extension
		XCTAssertNil(resultRandomString)
	}
	
	func testCleanPath() {
		var testStringA = "/foo/bar//baz/..////data.txt"
		testStringA.cleanPath()
		XCTAssertEqual(testStringA, "/foo/bar/data.txt")
		
		var testStringB = "../foo/bar//baz/..///..//data.txt"
		testStringB.cleanPath()
		XCTAssertEqual(testStringB, "../foo/data.txt")
	}
	
	func testCleanedPath() {
		let testStringA = "/foo/bar//baz/..///data.txt"
		XCTAssertEqual(testStringA.cleanedPath(), "/foo/bar/data.txt")
		
		let testStringB = "../foo/bar//baz/..///..//data.txt"
		XCTAssertEqual(testStringB.cleanedPath(), "../foo/data.txt")
	}
	
	func testJoinVararg() {
		var base1 = "/foo/bar"
		base1.join("/baz", "..", "/..//data.txt")
		XCTAssertEqual(base1, "/foo/data.txt")
		
		var base2 = "/foo/bar/"
		base2.join("baz/", "..", "//data.txt")
		XCTAssertEqual(base2, "/foo/bar/data.txt")
	}
	
	func testJoinArray() {
		var base1 = "/foo/bar"
		base1.join(paths: ["/baz", "..", "/..//data.txt"])
		XCTAssertEqual(base1, "/foo/data.txt")
		
		var base2 = "/foo/bar/"
		base2.join(paths: ["baz/", "..", "//data.txt"])
		XCTAssertEqual(base2, "/foo/bar/data.txt")
	}
	
	func testJoiningVararg() {
		let base1 = "/foo/bar"
		XCTAssertEqual(base1.joining("/baz", "..", "/..//data.txt"), "/foo/data.txt")
		
		let base2 = "/foo/bar/"
		XCTAssertEqual(base2.joining("baz/", "..", "//data.txt"), "/foo/bar/data.txt")
	}
	
	func testJoiningArray() {
		let base1 = "/foo/bar"
		XCTAssertEqual(base1.joining(paths: ["/baz", "..", "/..//data.txt"]), "/foo/data.txt")
		
		let base2 = "/foo/bar/"
		XCTAssertEqual(base2.joining(paths: ["baz/", "..", "//data.txt"]), "/foo/bar/data.txt")
	}
	
	static var allTests : [(String, (StringURLTests) -> () throws -> Void)] {
		return [
			("testParent", testParent),
			("testFile", testFile),
			("testFileName", testFileName),
			("testExtension", testExtension),
			("testCleanPath", testCleanPath),
			("testCleanedPath", testCleanedPath),
			("testJoinVararg", testJoinVararg),
			("testJoinArray", testJoinArray),
			("testJoiningVararg", testJoiningVararg),
			("testJoiningArray", testJoiningArray),
		]
	}
}
