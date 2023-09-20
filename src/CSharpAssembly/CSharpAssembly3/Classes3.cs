using System;

namespace CSharpAssembly
{
	enum CSharpAssemblyEnum5
	{
		Value1,
		Value2,
		Value3
	}

	enum CSharpAssemblyEnum6
	{
		Value1,
		Value2,
		Value3
	}

	class CSharpAssemblyClass5
	{
		public CSharpAssemblyEnum5 Enum5 { get; set; }
		public CSharpAssemblyEnum6 Enum6 { get; set; }
	}

	class CSharpAssemblyClass6
	{
		public string FirstName { get; set; }
		public string LastName { get; set; }
		public int Age { get; set; }
	}
}
