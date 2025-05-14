# DailySysClean

**DailySysClean** is a Windows administration tool designed to optimize system performance by cleaning junk files, temporary files, and unnecessary logs. It also helps free up memory and improve system speed. This tool is implemented using batch scripting for simplicity and ease of use.

---

## Features
- Clear temporary files.
- Delete junk files.
- Clean system logs.
- Free up memory.
- Automate repetitive cleaning tasks.

---

## Prerequisites
1. A Windows operating system (Windows 7 or later).
2. Administrator privileges to execute certain commands.
3. Basic knowledge of batch scripting (optional).

---

## Files Overview
1. **`DailySysClean.bat`**: The main batch script to execute the cleaning tasks.
2. **`config/settings.txt`**: Configuration file to customize cleaning options.
3. **`logs/cleaning_log.txt`**: Log file to track cleaning activities.

---

## How to Use

### Step 1: Download the Tool
1. Clone or download the repository to your local machine:
    ```bash
    git clone https://github.com/ltsali8220/daily-system-cleaner.git
    ```
    Or download the ZIP file and extract it.

### Step 2: Configure Settings
1. Open the `settings.txt` file in a text editor.
2. Customize the settings as per your requirements (e.g., specify directories to clean).

### Step 3: Run the Script
1. Open a Command Prompt with Administrator privileges.
2. Navigate to the folder containing `DailySysClean.bat`:
    ```cmd
    cd path\to\DailySysClean
    ```
3. Execute the script:
    ```cmd
    DailySysClean.bat
    ```

### Step 4: Review Logs
1. After execution, check the `cleaning_log.txt` file for a summary of the cleaning tasks performed.

---

## Example Configuration (`settings.txt`)
```plaintext
# Directories to clean
TEMP_DIR=C:\Users\YourUsername\AppData\Local\Temp
LOG_DIR=C:\Windows\Logs

# Enable or disable specific cleaning tasks
CLEAR_TEMP=true
CLEAR_LOGS=true
```

---

## Further Development
Here are some ideas to enhance the tool:
- **Add More Cleaning Tasks**: Include additional system maintenance tasks like defragmentation or registry cleaning.
- **GUI Interface**: Create a graphical user interface for easier usage.
- **Scheduler Integration**: Automate the script to run daily using Task Scheduler.
- **Error Handling**: Improve error handling and add notifications for failed tasks.
- **Multi-Language Support**: Allow users to select their preferred language.

---

## License
This project is licensed under the MIT License. See the `LICENSE` file for details.

---

## Disclaimer
Use this tool at your own risk. Ensure you understand the cleaning tasks before executing the script.
## Updated License
This project is licensed under the [MIT License](https://opensource.org/licenses/MIT). You are free to use, modify, and distribute this software under the terms of the license. See the `LICENSE` file in the repository for the full license text.
