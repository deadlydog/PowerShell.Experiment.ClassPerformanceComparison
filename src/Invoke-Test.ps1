[string] $csharpSlnFilePath = Resolve-Path -Path "$PSScriptRoot/CSharpAssembly/CSharpAssembly.sln"
& dotnet build "$csharpSlnFilePath" --configuration Release

[TimeSpan] $timeToImportPowerShellClasses = Measure-Command {
	. "$PSScriptRoot/ImportPowerShellClass.ps1"
}

[TimeSpan] $timeToImportInlineCSharp = Measure-Command {
	. "$PSScriptRoot/ImportInlineCSharp.ps1"
}

[TimeSpan] $timeToImportCSharpAssembly = Measure-Command {
	. "$PSScriptRoot/ImportCSharpAssembly.ps1"
}

Write-Output @"
The time it took to import the classes using the different methods are:

ImportPowerShellClasses: $($timeToImportPowerShellClasses.Milliseconds)ms
ImportInlineCSharp: $($timeToImportInlineCSharp.Milliseconds)ms
ImportCSharpAssembly: $($timeToImportCSharpAssembly.Milliseconds)ms
"@
