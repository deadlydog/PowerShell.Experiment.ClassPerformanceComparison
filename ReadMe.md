# PowerShell class performance comparison test

This repo is used to run tests to compare the performance of the different ways to define and use classes in PowerShell:

- PowerShell classes
- Inline C# classes
- Compiled C# classes (import an assembly)

## The test

The same classes and enums are defined in each of the three ways, and are imported multiple times into a PowerShell session.
The test measures how long it takes to import the class and enum types into the script.

To run the test, run the [Invoke-Test.ps1](/src/Invoke-Test.ps1) script.

### Prerequisites

The test requires dotnet.exe to be installed and available in the PATH, as it is used to build the C# assemblies imported by the test.

## Results

The results of the test on my local machine are:

```text
ImportPowerShellClasses1: 80ms
ImportPowerShellClasses2: 9ms
ImportPowerShellClasses3: 8ms

ImportInlineCSharp1: 667ms
ImportInlineCSharp2: 24ms
ImportInlineCSharp3: 36ms

ImportCSharpAssembly1: 10ms
ImportCSharpAssembly2: 9ms
ImportCSharpAssembly3: 8ms
```

Interestingly, the first import of each method is always the slowest, presumably due to required assemblies being loaded into memory the first time they are needed.

We can see that using a C# assembly is the fastest method, followed by PowerShell classes, and then inline C# classes.
