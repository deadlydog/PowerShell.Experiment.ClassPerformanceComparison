# PowerShell class performance comparison

This is a test repo used to compare the performance of the different ways to define and use classes in PowerShell:

- PowerShell classes
- Inline C# classes
- Compiled C# classes (import an assembly)

## Prerequisites

The test requires dotnet.exe to be installed and available in the PATH, as it is used to build the C# assembly imported by the test.

## The test

The same classes and enums are defined in each of the three ways.
The test measures how long it takes to import the class and enum types into the script.

To run the test, run the [Invoke-Test.ps1](/src/Invoke-Test.ps1) script.

## Results

The results of the test on my local machine are:

- PowerShell classes:
- Inline C# classes:
- Compiled C# classes:
