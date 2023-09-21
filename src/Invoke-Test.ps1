[string] $csharpSlnFilePath = Resolve-Path -Path "$PSScriptRoot/CSharpAssembly/CSharpAssembly.sln"
& dotnet build "$csharpSlnFilePath" --configuration Release

[TimeSpan] $timeToImportPowerShellClasses1 = Measure-Command {
	. "$PSScriptRoot/ImportPowerShellClass1.ps1"
}
[TimeSpan] $timeToImportPowerShellClasses2 = Measure-Command {
	. "$PSScriptRoot/ImportPowerShellClass2.ps1"
}
[TimeSpan] $timeToImportPowerShellClasses3 = Measure-Command {
	. "$PSScriptRoot/ImportPowerShellClass3.ps1"
}
[TimeSpan] $timeToImportPowerShellClassesLarge = Measure-Command {
	. "$PSScriptRoot/ImportPowerShellClassLarge.ps1"
}

[TimeSpan] $timeToImportInlineCSharp1 = Measure-Command {
	. "$PSScriptRoot/ImportInlineCSharp1.ps1"
}
[TimeSpan] $timeToImportInlineCSharp2 = Measure-Command {
	. "$PSScriptRoot/ImportInlineCSharp2.ps1"
}
[TimeSpan] $timeToImportInlineCSharp3 = Measure-Command {
	. "$PSScriptRoot/ImportInlineCSharp3.ps1"
}
[TimeSpan] $timeToImportInlineCSharpLarge = Measure-Command {
	. "$PSScriptRoot/ImportInlineCSharpLarge.ps1"
}

[TimeSpan] $timeToImportCSharpAssembly1 = Measure-Command {
	. "$PSScriptRoot/ImportCSharpAssembly1.ps1"
}
[TimeSpan] $timeToImportCSharpAssembly2 = Measure-Command {
	. "$PSScriptRoot/ImportCSharpAssembly2.ps1"
}
[TimeSpan] $timeToImportCSharpAssembly3 = Measure-Command {
	. "$PSScriptRoot/ImportCSharpAssembly3.ps1"
}
[TimeSpan] $timeToImportCSharpAssemblyLarge = Measure-Command {
	. "$PSScriptRoot/ImportCSharpAssemblyLarge.ps1"
}

Write-Output @"
The time it took to import the classes using the different methods are:

ImportPowerShellClasses1: $($timeToImportPowerShellClasses1.Milliseconds)ms
ImportPowerShellClasses2: $($timeToImportPowerShellClasses2.Milliseconds)ms
ImportPowerShellClasses3: $($timeToImportPowerShellClasses3.Milliseconds)ms
ImportPowerShellClassesLarge: $($timeToImportPowerShellClassesLarge.Milliseconds)ms

ImportInlineCSharp1: $($timeToImportInlineCSharp1.Milliseconds)ms
ImportInlineCSharp2: $($timeToImportInlineCSharp2.Milliseconds)ms
ImportInlineCSharp3: $($timeToImportInlineCSharp3.Milliseconds)ms
ImportInlineCSharpLarge: $($timeToImportInlineCSharpLarge.Milliseconds)ms

ImportCSharpAssembly1: $($timeToImportCSharpAssembly1.Milliseconds)ms
ImportCSharpAssembly2: $($timeToImportCSharpAssembly2.Milliseconds)ms
ImportCSharpAssembly3: $($timeToImportCSharpAssembly3.Milliseconds)ms
ImportCSharpAssemblyLarge: $($timeToImportCSharpAssemblyLarge.Milliseconds)ms
"@
