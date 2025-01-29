// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "mktiupgrade",
	targets: [
		.executableTarget(
			name: "mktiupgrade",
			dependencies: ["crypto", "libtom", "tiupgrade"],
			path: "src"),

		.target(
			name: "crypto",
			dependencies: ["libtom"],
			path: "crypto",
			publicHeadersPath: "."),

		.target(
			name: "libtom",
			path: "libtom",
			publicHeadersPath: "."),

		.target(
			name: "tiupgrade",
			path: "tiupgrade",
			publicHeadersPath: "."),
	],
	cLanguageStandard: .c2x
)
