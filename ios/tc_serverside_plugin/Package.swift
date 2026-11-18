// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "tc_serverside_plugin",
    platforms: [
        .iOS("15.0")
    ],
    products: [
        .library(name: "tc-serverside-plugin", targets: ["tc_serverside_plugin"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        // Commanders Act iOS SDK (binary-only SPM mirror of CommandersAct/iOSV5).
        // Fixed version on purpose, checked against the latest iOSV5-spm release by ci-scripts/bridge_pre_release_checks.py.
        .package(url: "https://github.com/CommandersAct/iOSV5-spm", exact: "5.6.0")
    ],
    targets: [
        .target(
            name: "tc_serverside_plugin",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "TCCore", package: "iOSV5-spm"),
                .product(name: "TCServerSide_noIDFA", package: "iOSV5-spm"),
            ]
        )
    ]
)
