Add-Type -Language CSharp -TypeDefinition @'
enum InlineCSharpEnum1
{
	Value1,
	Value2,
	Value3
}

enum InlineCSharpEnum2
{
	Value1,
	Value2,
	Value3
}

class InlineCSharpClass1
{
	public InlineCSharpEnum1 Enum1 {get; set;}
	public InlineCSharpEnum2 Enum2 { get; set; }

	public InlineCSharpClass1()
	{
		this.Enum1 = InlineCSharpEnum1.Value1;
		this.Enum2 = InlineCSharpEnum2.Value2;
	}
}

class InlineCSharpClass2
{
	public string FirstName { get; set; }
	public string LastName { get; set; }
	public int Age { get; set; }
}
'@
