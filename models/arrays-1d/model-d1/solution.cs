// Copyright (C) 2026~2027 janaalaa <ja8659808@gmail.com> Licensed under GNU GPLv3.

using System;

namespace Models.Arrays1d
{
	public static class ModelD1
	{
		public static void Run()
		{
        	int[] numbers = { 50, 45, 40, 35, 30, 25, 20, 15, 10 };

			Console.Write("Elements in reverse order greater than 20: ");

			for (int i = 0; i < numbers.Length; i++)
				if (numbers[i] > 20)
					Console.Write(numbers[i] + " ");

			Console.WriteLine();
		}
	}
}