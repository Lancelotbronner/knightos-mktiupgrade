// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "mktiupgrade",
	targets: [
		.executableTarget(
			name: "mktiupgrade",
			dependencies: ["tiupgrade"]),

		.target(
			name: "tom",
			publicHeadersPath: "."),

		.target(
			name: "tiupgrade",
			dependencies: ["tom"],
			publicHeadersPath: "."),
	],
	cLanguageStandard: .c2x
)
