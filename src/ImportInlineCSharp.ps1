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
}

class InlineCSharpClass2
{
	public string FirstName { get; set; }
	public string LastName { get; set; }
	public int Age { get; set; }
}
'@
