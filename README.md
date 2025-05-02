
# Simple Environment Automation Tool

This is a **simple shell script** that allows you to create, manage, and switch between different environments (like `study`, `project`, `entertainment`, etc.) with just a single command. It automates the process of launching multiple applications or websites for different tasks.

## Features:

* **Create custom environments** with specific commands (open websites, apps, etc.)
* **Run environments** with a single command
* **Easily list available environments**
* **Modify, add, or remove environments** as needed

## 🛠️ Prerequisites

* **Linux-based system** or **macOS**
* **Bash shell** (default on most Linux distributions and macOS)
* No additional dependencies required, just pure Bash scripting!

## 🚀 Installation & Usage

1. **Download the script:**
   Clone or download the repository to your system.

   ```bash
   git clone <repository-url>
   cd simple_env_automation
   ```

2. **Make the script executable:**
   Make the script executable so you can run it directly.

   ```bash
   chmod +x simple_env.sh
   ```

3. **Run the script:**
   To get help and see the available commands, run:

   ```bash
   ./simple_env.sh --help
   ```

### 🖥️ **Add a New Environment**

To add a new environment, use the `--add` option. For example, to create a "study" environment that opens ChatGPT and Notion:

```bash
./simple_env.sh --add study "firefox https://chatgpt.com & firefox https://notion.so"
```

### 🚀 **Run an Environment**

To run an environment, use the environment name preceded by `--`. For example, to run the "study" environment:

```bash
./simple_env.sh --study
```

### 📝 **List All Environments**

To list all saved environments, use:

```bash
./simple_env.sh --list
```

### ❓ **Help**

For more usage information, run:

```bash
./simple_env.sh --help
```

## 🧠 Tips for Efficiency:

* **Create aliases** to make it even faster. Add the following lines to your `~/.bashrc` or `~/.zshrc` to create shortcuts for your most-used environments:

  ```bash
  alias study="~/path-to-script/simple_env.sh --study"
  alias project="~/path-to-script/simple_env.sh --project"
  alias entertain="~/path-to-script/simple_env.sh --entertain"
  ```

  After adding this, you can just run `study`, `project`, or `entertain` directly from your terminal!

* **Automate startup:** If you'd like certain environments to run automatically when you open a terminal or start your computer, simply add the `alias` commands to your shell's startup file (e.g., `~/.bashrc` or `~/.zshrc`).

## 🧑‍💻 Example Environments You Can Add:

* **Study:** Open ChatGPT and Notion

  ```bash
  ./simple_env.sh --add study "firefox https://chatgpt.com & firefox https://notion.so"
  ```

* **Project:** Open GitHub and a VSCode project folder

  ```bash
  ./simple_env.sh --add project "code ~/my-project & firefox https://github.com"
  ```

* **Entertainment:** Open Netflix and a music streaming service

  ```bash
  ./simple_env.sh --add entertain "firefox https://netflix.com & firefox https://spotify.com"
  ```

---

## 📌 To Do:

* Add functionality for **deleting environments**.
* Improve **error handling** and edge cases.
---
**Enjoy automating your daily tasks with ease!** 😊

---

This README will guide users through setting up the project and make it easy to get started. Would you like help with anything else?
