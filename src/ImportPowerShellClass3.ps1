enum PowerShellEnum5
{
	Value1
	Value2
	Value3
}

enum PowerShellEnum6
{
	Value1
	Value2
	Value3
}

class PowerShellClass5
{
	[PowerShellEnum5] $Enum5
	[PowerShellEnum6] $Enum6
}

class PowerShellClass6
{
	[string] $FirstName
	[string] $LastName
	[int] $Age
}
