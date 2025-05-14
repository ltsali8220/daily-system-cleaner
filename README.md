# Build Script

```none
NAME
    build.ps1

SYNOPSIS
    Builds and publishes the projects


SYNTAX
    build.ps1 [-Architecture <String>] [-Configuration <String>] [-TargetFramework <String>] [-DryRun] [-UseMsBuild] [<CommonParameters>]


DESCRIPTION
    Builds and publishes the projects under artifacts\. Provides control over what TargetFramework to build against,
    which build engine to use (dotnet vs. MSBuild), and what architecture (x86, x64) to build.


PARAMETERS
    -Architecture <String>
        The Platform architecture to build.
        Valid values are AnyCPU, 'Any CPU', x86, Win32, x64, and amd64.

        The default is $env:PROCESSOR_ARCHITECTURE, i.e., the architecture of the current
        OS.

        amd64 is equivalent to x64
        AnyCPU and 'Any CPU' and Win32 are equivalent to x86

    -Configuration <String>
        The build configuration

        Valid values are Debug, Release
        The default is Debug

    -TargetFramework <String>
        The TargetFramework to build for.

        This will always default to the most recent released version of .NET Core that supports WPF.
        You can identify this by loking at global.json sdk.version property, or <TargetFramework> property
        in project files im this repo.

        Alternative TargetFramework can be supplied to build. Currently, netcoreapp3.1 (default),
        net6.0-windows, net7.0-windows, net8.0-windows, net9.0-windows and net10.0-windows are supported.

    -DryRun [<SwitchParameter>]
        When this switch is specified, the build is simulated, but the actual build is not run.

    -UseMsBuild [<SwitchParameter>]
        When this switch is specified, MSBuild is used as the build engine instead of dotnet.exe.
        This requires that VS2022 be installed and avaialble on the local machine.

        Some projects in this repo can be built only using MSBuild.

    <CommonParameters>
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see
        about_CommonParameters (https:/go.microsoft.com/fwlink/?LinkID=113216).

    -------------------------- EXAMPLE 1 --------------------------
    PS C:\>build.ps1

    Builds the repo
    -------------------------- EXAMPLE 2 --------------------------
    PS C:\>build.ps1 -TargetFramework net10.0-windows -UseMsBuild

    Builds the repo using MSBuild for net10.0-windows TFM
    -------------------------- EXAMPLE 3 --------------------------
    PS C:\>build.ps1 -UseMsBuild -Platform x86 -Configuration Release

    Builds the repo using MSBuild for x86 platform & Release configuration
```

---

# DailySysClean

**DailySysClean** is a Windows administration tool designed to automate daily system cleaning tasks such as clearing temporary files, cleaning logs, and optimizing system performance. This tool is implemented using batch scripting for simplicity and ease of use.

---

## Features
- Clear temporary files.
- Clean system logs.
- Optimize disk space.
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
   git clone https://github.com/your-repo/DailySysClean.git
