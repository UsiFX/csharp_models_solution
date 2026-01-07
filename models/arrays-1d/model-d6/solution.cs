// Copyright (C) 2026~2027 janaalaa <ja8659808@gmail.com> Licensed under GNU GPLv3.

using System;

namespace Models.Arrays1d
{
	public static class ModelD6
	{
		public static void Run()
		{
			int[] numbers = new int[8];
			Console.WriteLine("Enter 8 integers:");

			for (int i = 0; i < numbers.Length; i++)
				numbers[i] = int.Parse(Console.ReadLine());

			Console.WriteLine("\nElements divisible by both 2 and 3:");
			for (int i = 0; i < numbers.Length; i++)
				if (numbers[i] % 6 == 0)
					Console.Write(numbers[i] + " ");

			Console.WriteLine();
		}
	}
}
