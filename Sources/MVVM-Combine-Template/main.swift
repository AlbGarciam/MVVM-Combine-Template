import Files

do {
    let templatesFolder = try Folder.current.subfolder(at: "MVVM-Combine")
    print("Templates folder: \(templatesFolder.path)")
    let xcodeTemplatesPath = try Folder(path: "~/Library/Developer/Xcode/Templates")

    if let destination = try? xcodeTemplatesPath.subfolder(at: "MVVM-Combine") {
        print("Destination folder exists. Removing...")
        try? destination.delete()
    }

    print("Copying templates")
    try templatesFolder.copy(to: xcodeTemplatesPath)
    print("Templates copied to: \(xcodeTemplatesPath.path)")
} catch {
    print(error.localizedDescription)
}

