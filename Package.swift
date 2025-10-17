// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.4.3"
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
        .package(url: "https://github.com/zoho/ZohoDeskPortalConfiguration.git", exact: version)
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalCommunity", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalCommunity/\(version)/ZohoDeskPortalCommunity.zip", checksum: "b558ca56a1f6262f2cd3036a3cf644685dcdbd81ac5f8f6d7681aad16ceb8fa4"),
        
        .target(
            name: "ZohoDeskPortalCommunityPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration")
            ]
        )
    ]
)
