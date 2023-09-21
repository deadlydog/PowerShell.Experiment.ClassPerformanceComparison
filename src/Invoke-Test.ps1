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
[TimeSpan] $timeToImportPowerShellClassesLarge1 = Measure-Command {
	. "$PSScriptRoot/ImportPowerShellClassLarge1.ps1"
}
[TimeSpan] $timeToImportPowerShellClassesLarge2 = Measure-Command {
	. "$PSScriptRoot/ImportPowerShellClassLarge2.ps1"
}
[TimeSpan] $timeToImportPowerShellClassesLarge3 = Measure-Command {
	. "$PSScriptRoot/ImportPowerShellClassLarge3.ps1"
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
[TimeSpan] $timeToImportInlineCSharpLarge1 = Measure-Command {
	. "$PSScriptRoot/ImportInlineCSharpLarge1.ps1"
}
[TimeSpan] $timeToImportInlineCSharpLarge2 = Measure-Command {
	. "$PSScriptRoot/ImportInlineCSharpLarge2.ps1"
}
[TimeSpan] $timeToImportInlineCSharpLarge3 = Measure-Command {
	. "$PSScriptRoot/ImportInlineCSharpLarge3.ps1"
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
[TimeSpan] $timeToImportCSharpAssemblyLarge1 = Measure-Command {
	. "$PSScriptRoot/ImportCSharpAssemblyLarge1.ps1"
}
[TimeSpan] $timeToImportCSharpAssemblyLarge2 = Measure-Command {
	. "$PSScriptRoot/ImportCSharpAssemblyLarge2.ps1"
}
[TimeSpan] $timeToImportCSharpAssemblyLarge3 = Measure-Command {
	. "$PSScriptRoot/ImportCSharpAssemblyLarge3.ps1"
}

Write-Output @"
The time it took to import the classes using the different methods are:

ImportPowerShellClasses1: $($timeToImportPowerShellClasses1.Milliseconds)ms
ImportPowerShellClasses2: $($timeToImportPowerShellClasses2.Milliseconds)ms
ImportPowerShellClasses3: $($timeToImportPowerShellClasses3.Milliseconds)ms
ImportPowerShellClassesLarge1: $($timeToImportPowerShellClassesLarge1.Milliseconds)ms
ImportPowerShellClassesLarge2: $($timeToImportPowerShellClassesLarge2.Milliseconds)ms
ImportPowerShellClassesLarge3: $($timeToImportPowerShellClassesLarge3.Milliseconds)ms

ImportInlineCSharp1: $($timeToImportInlineCSharp1.Milliseconds)ms
ImportInlineCSharp2: $($timeToImportInlineCSharp2.Milliseconds)ms
ImportInlineCSharp3: $($timeToImportInlineCSharp3.Milliseconds)ms
ImportInlineCSharpLarge1: $($timeToImportInlineCSharpLarge1.Milliseconds)ms
ImportInlineCSharpLarge2: $($timeToImportInlineCSharpLarge2.Milliseconds)ms
ImportInlineCSharpLarge3: $($timeToImportInlineCSharpLarge3.Milliseconds)ms

ImportCSharpAssembly1: $($timeToImportCSharpAssembly1.Milliseconds)ms
ImportCSharpAssembly2: $($timeToImportCSharpAssembly2.Milliseconds)ms
ImportCSharpAssembly3: $($timeToImportCSharpAssembly3.Milliseconds)ms
ImportCSharpAssemblyLarge1: $($timeToImportCSharpAssemblyLarge1.Milliseconds)ms
ImportCSharpAssemblyLarge2: $($timeToImportCSharpAssemblyLarge2.Milliseconds)ms
ImportCSharpAssemblyLarge3: $($timeToImportCSharpAssemblyLarge3.Milliseconds)ms
"@
