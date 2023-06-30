import ProjectDescription

let project = Project(name: "BadExcError", targets: [
    Target(name: "executable",
           platform: .macOS,
           product: .commandLineTool,
           bundleId: "io.tuist.executable",
           deploymentTarget: .macOS(targetVersion: "13.0"),
           sources: ["Sources/**/*.swift"],
          dependencies: [
            .external(name: "Lifecycle")
          ])
])
