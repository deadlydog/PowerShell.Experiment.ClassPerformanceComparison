using System;

namespace CSharpAssembly
{
	enum CSharpAssemblyEnum3
	{
		Value1,
		Value2,
		Value3
	}

	enum CSharpAssemblyEnum4
	{
		Value1,
		Value2,
		Value3
	}

	class CSharpAssemblyClass3
	{
		public CSharpAssemblyEnum3 Enum3 { get; set; }
		public CSharpAssemblyEnum4 Enum4 { get; set; }
	}

	class CSharpAssemblyClass4
	{
		public string FirstName { get; set; }
		public string LastName { get; set; }
		public int Age { get; set; }
	}
}
