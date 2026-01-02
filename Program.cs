using System;
using System.Linq;
using System.Reflection;

class Program
{
	static void Main(string[] args)
	{
		if (args.Length < 2)
		{
			Console.WriteLine("Usage: dotnet run -- <category> <model>");
			return;
		}

		string category = args[0].Replace("-", ""); // arrays-1d -> arrays1d
		string model = args[1].ToLower(); // a7

	        // Search all types in the project for a class that matches the name
		var type = Assembly.GetExecutingAssembly()
			   .GetTypes()
			   .FirstOrDefault(t =>
				t.Name.Equals($"Model{model}", StringComparison.OrdinalIgnoreCase) 
					&& t.Namespace != null
					&& t.Namespace.EndsWith(category, StringComparison.OrdinalIgnoreCase)
				);

		if (type != null)
		{
			Console.WriteLine($"[*] Running Model {model} from Category {category}...");
			var method = type.GetMethod("Run", BindingFlags.Public | BindingFlags.Static);
			method?.Invoke(null, null);
		}
		else Console.WriteLine($"[!] Model {model} not found in category {category}");
	}
}
