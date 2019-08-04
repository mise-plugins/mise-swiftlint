# asdf-swiftlint
An asdf plugin for swiftlint (a linting and formatting tool for Swift)

In some cases, you may want fine-grained control over whether or not you use the latest version of swiftlint. New versions may introduce new opt-out rules that you're not prepared to fix yet, for instance.

If this is the case, you can use this asdf plugin to manage your swiftlint versions in the same way you would manage versions of ruby or node.js with asdf.

**Note**: This plugin is only useful on MacOS. It only downloads the prebuilt binaries provided by the swiftlint maintainers, and they only distribute MacOS binaries as of this writing.
