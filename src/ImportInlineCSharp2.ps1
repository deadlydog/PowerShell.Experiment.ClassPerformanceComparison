Add-Type -Language CSharp -TypeDefinition @'
enum InlineCSharpEnum3
{
	Value1,
	Value2,
	Value3
}

enum InlineCSharpEnum4
{
	Value1,
	Value2,
	Value3
}

class InlineCSharpClass3
{
	public InlineCSharpEnum3 Enum3 {get; set;}
	public InlineCSharpEnum4 Enum4 { get; set; }

	public InlineCSharpClass3()
	{
		this.Enum3 = InlineCSharpEnum3.Value1;
		this.Enum4 = InlineCSharpEnum4.Value2;
	}
}

class InlineCSharpClass4
{
	public string FirstName { get; set; }
	public string LastName { get; set; }
	public int Age { get; set; }
}
'@
