// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GenieeMediationAppLovin",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "GenieeMediationAppLovin",
            targets: ["GenieeMediationAppLovinTarget"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/unigeniee/swift-package-manager-geniee-ios-sdk.git",
            from: "8.4.3"
        ),
        .package(
            url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git",
            from: "13.6.0"
        )
    ],
    targets: [
        .target(
            name: "GenieeMediationAppLovinTarget",
            dependencies: [
                "GenieeMediationAppLovin",
                .product(name: "GNAdSDK", package: "swift-package-manager-geniee-ios-sdk"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ],
            path: "Sources/GenieeMediationAppLovinTarget"
        ),
        .binaryTarget(
            name: "GenieeMediationAppLovin",
            url: "https://github.com/unigeniee/geniee-ios-mediation-applovin/releases/download/13.6.200/GenieeMediationAppLovin.13.6.2.0.zip",
            checksum: "bc461765d6475a3461c7f237685fbc0f6a798b04230079988ec1a70452703361"
        )
    ]
)
