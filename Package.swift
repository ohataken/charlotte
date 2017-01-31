import PackageDescription

let package = Package(
    name: "charlotte",
    dependencies: [
        .Package(url: "https://github.com/Alamofire/Alamofire.git", majorVersion: 4)
    ]
)
