// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.4.0"
let package = Package(
    name: "ZohoDeskPortalCommunity",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZohoDeskPortalCommunity",
            targets: ["ZohoDeskPortalCommunity", "ZohoDeskPortalCommunityPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/zoho/ZohoDeskPortalConfiguration.git", exact: "4.4.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalCommunity", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalCommunity/\(version)/ZohoDeskPortalCommunity.zip", checksum: "de6ff8e3830f8a3851b692362eef6562f0669c67f885638892d27ba329f7c450"),
        
        .target(
            name: "ZohoDeskPortalCommunityPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration")
            ]
        )
    ]
)
