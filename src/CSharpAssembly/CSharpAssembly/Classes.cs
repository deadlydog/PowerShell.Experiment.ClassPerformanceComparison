using System;

namespace CSharpAssembly
{
	enum CSharpAssemblyEnum1
	{
		Value1,
		Value2,
		Value3
	}

	enum CSharpAssemblyEnum2
	{
		Value1,
		Value2,
		Value3
	}

	class CSharpAssemblyClass1
	{
		public CSharpAssemblyEnum1 Enum1 { get; set; }
		public CSharpAssemblyEnum2 Enum2 { get; set; }
	}

	class CSharpAssemblyClass2
	{
		public string FirstName { get; set; }
		public string LastName { get; set; }
		public int Age { get; set; }
	}
}
