// Copyright (C) 2026~2027 janaalaa <ja8659808@gmail.com> Licensed under GNU GPLv3.

using System;

namespace Models.Arrays1d
{
	public static class ModelD7
	{
		public static void Run()
		{
			int[] numbers = new int[7];
			Console.WriteLine("Enter 7 integers:");

			for (int i = 0; i < numbers.Length; i++)
				numbers[i] = int.Parse(Console.ReadLine());

			Console.WriteLine("\nOriginal array:");

			for (int i = 0; i < numbers.Length; i++)
				Console.Write(numbers[i] + " ");

			Console.WriteLine("\n\nElements greater than 15:");

			foreach (int num in numbers)
				if (num > 15)
					Console.Write(num + " ");

			Console.WriteLine();
		}
	}
}
