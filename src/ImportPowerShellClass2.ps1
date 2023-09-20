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

	PowerShellClass3()
	{
		$this.Enum3 = [PowerShellEnum3]::Value1
		$this.Enum4 = [PowerShellEnum4]::Value2
	}
}

class PowerShellClass4
{
	[string] $FirstName
	[string] $LastName
	[int] $Age
}
