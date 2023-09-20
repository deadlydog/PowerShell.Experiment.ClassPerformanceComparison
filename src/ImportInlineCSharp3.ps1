Add-Type -Language CSharp -TypeDefinition @'
enum InlineCSharpEnum5
{
	Value1,
	Value2,
	Value3
}

enum InlineCSharpEnum6
{
	Value1,
	Value2,
	Value3
}

class InlineCSharpClass5
{
	public InlineCSharpEnum5 Enum5 {get; set;}
	public InlineCSharpEnum6 Enum6 { get; set; }
}

class InlineCSharpClass6
{
	public string FirstName { get; set; }
	public string LastName { get; set; }
	public int Age { get; set; }
}
'@
