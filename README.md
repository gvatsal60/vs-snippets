# 🚀 vs-snippets 🚀

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://img.shields.io/github/license/gvatsal60/vs-snippets)
[![build status](https://github.com/gvatsal60/vs-snippets/actions/workflows/readme-checker.yaml/badge.svg)](https://github.com/gvatsal60/vs-snippets/actions/workflows/readme-checker.yaml)
[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/gvatsal60/vs-snippets/master.svg)](https://results.pre-commit.ci/latest/github/gvatsal60/vs-snippets/HEAD)
![GitHub pull-requests](https://img.shields.io/github/issues-pr/gvatsal60/vs-snippets)
![GitHub Issues](https://img.shields.io/github/issues/gvatsal60/vs-snippets)
![GitHub forks](https://img.shields.io/github/forks/gvatsal60/vs-snippets)
![GitHub stars](https://img.shields.io/github/stars/gvatsal60/vs-snippets)

A collection of useful user snippets designed for file templates in Visual Studio Code.
This repository provides pre-configured code snippets that streamline your development process, making it quicker and easier to generate boilerplate code for various file types.
Whether you're working on a new project or maintaining an existing one, these snippets can enhance productivity and ensure consistency across your codebase.

## Configuring User Snippets in VSCode

This guide will walk you through the steps to configure user snippets in Visual Studio Code (VSCode) using a collection of snippets from a GitHub repository.

## Prerequisites

Make sure you have the following installed:

- [Visual Studio Code](https://code.visualstudio.com/)
- [Git](https://git-scm.com/)

## Steps to Configure User Snippets

### 1. **Clone the Snippets Repository**

First, clone the repository containing the user snippets to your local machine:

```sh
git clone https://github.com/gvatsal60/vs-snippets.git
```

### 2. **Navigate to the Snippets Directory**

Change your directory to where the snippets are located:

``` sh
cd vs-snippets/snippets
```

### 3. **Copy the Snippets**

You will see various snippet files in this directory. To use these snippets, copy them to your VSCode snippets folder.
You can do this manually or via the terminal.

- Manually:
  - Open VSCode.
  - Go to File > Preferences > User Snippets.
  - Select the language for which you want to add snippets, or create a new global snippets file.
  - Copy the content from the .json files you downloaded and paste it into the appropriate snippet file.

- Using Terminal (For Linux and Mac Only):

    ``` sh
    cp *.code-snippets ~/.config/Code/User/snippets/
    ```

### 4. **Reload VSCode**

To apply the changes, you might need to reload or restart VSCode. You can do this by:

- Pressing Ctrl+Shift+P to open the Command Palette.
- Typing Reload Window and pressing Enter.

### 5. **Verify Snippets**

To ensure that your snippets are working correctly:

- Open a file of the language for which the snippets are intended.
- Start typing a snippet prefix to see if the snippet suggestions appear.

## Troubleshooting

If snippets are not showing up, make sure there are no syntax errors in your snippet files.
Verify that the snippets file is in the correct directory.
Check the VSCode documentation for more detailed guidance on snippets.

For more information on creating and managing snippets in VSCode, you can refer to the official [documentation](https://code.visualstudio.com/docs/editor/userdefinedsnippets).

## Contributing

Contributions are welcome! Please read our
[Contribution Guidelines](https://github.com/gvatsal60/vs-snippets/blob/HEAD/CONTRIBUTING.md)
before submitting pull requests.

## License

This project is licensed under the Apache License 2.0 License - see the
[LICENSE](https://github.com/gvatsal60/vs-snippets/blob/HEAD/LICENSE) file for details.
