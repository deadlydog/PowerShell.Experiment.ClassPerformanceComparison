enum PowerShellEnum1
{
	Value1
	Value2
	Value3
}

enum PowerShellEnum2
{
	Value1
	Value2
	Value3
}

class PowerShellClass1
{
	[PowerShellEnum1] $Enum1
	[PowerShellEnum2] $Enum2
}

class PowerShellClass2
{
	[string] $FirstName
	[string] $LastName
	[int] $Age
}
