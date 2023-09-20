enum PowerShellEnum3
{
	Value1
	Value2
	Value3
}

enum PowerShellEnum4
{
	Value1
	Value2
	Value3
}

class PowerShellClass3
{
	[PowerShellEnum3] $Enum3
	[PowerShellEnum4] $Enum4
}

class PowerShellClass4
{
	[string] $FirstName
	[string] $LastName
	[int] $Age
}
