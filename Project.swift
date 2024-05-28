import ProjectDescription

let project = Project(
    name: "TuistMinimalReproduction",
    packages: [
        .package(path: "MyPackage"),
    ],
    targets: [
        .target(
            name: "TuistMinimalReproduction",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.TuistMinimalReproduction",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["TuistMinimalReproduction/Sources/**"],
            resources: ["TuistMinimalReproduction/Resources/**"],
            dependencies: [
                .package(product: "MyPackage", type: .runtime),
            ]
        ),
        .target(
            name: "TuistMinimalReproductionTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.TuistMinimalReproductionTests",
            infoPlist: .default,
            sources: ["TuistMinimalReproduction/Tests/**"],
            resources: [],
            dependencies: [.target(name: "TuistMinimalReproduction")]
        ),
    ]
)
