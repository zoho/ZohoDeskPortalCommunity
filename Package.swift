// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.1.1"
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
        .package(url: "https://github.com/zoho/ZohoDeskPortalConfiguration.git", exact: "4.1.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalCommunity", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalCommunity/\(version)/ZohoDeskPortalCommunity.zip", checksum: "64f79996af0e69b1cecc41ea8520bd1439c95664594d939360a76c7e67a9e5bb"),
        
        .target(
            name: "ZohoDeskPortalCommunityPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration")
            ]
        )
    ]
)
