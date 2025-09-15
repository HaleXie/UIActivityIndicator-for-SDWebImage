// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UIActivityIndicator-for-SDWebImage",
    platforms: [
        .iOS(.v16),
        .visionOS(.v2)
    ],
    products: [
        .library(
            name: "UIActivityIndicator-for-SDWebImage",
            targets: ["UIActivityIndicator-for-SDWebImage"]
        ),
    ],
    dependencies: [
        .package(url: "git@github.com:SDWebImage/SDWebImage.git", from: "5.21.2")
    ],
    targets: [
        .target(
            name: "UIActivityIndicator-for-SDWebImage",
            dependencies: [
                .product(name: "SDWebImage", package: "SDWebImage"),
            ],
            path: ".",
            sources: [
                "UIImageView+UIActivityIndicatorForSDWebImage.m"
            ],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ]
        ),
    ]
)
