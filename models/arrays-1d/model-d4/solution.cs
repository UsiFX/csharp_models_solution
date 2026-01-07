// Copyright (C) 2026~2027 janaalaa <ja8659808@gmail.com> Licensed under GNU GPLv3.

using System;

namespace Models.Arrays1d
{
	public static class ModelD4
	{
		public static void Run()
		{
			int[] numbers = new int[6];
			Console.WriteLine("Enter 6 integers:");
			for (int i = 0; i < numbers.Length; i++)
			{
				numbers[i] = int.Parse(Console.ReadLine());
			}

			for (int i = 0; i < numbers.Length / 2; i++)
			{
				int temp = numbers[i];
				numbers[i] = numbers[numbers.Length - 1 - i];
				numbers[numbers.Length - 1 - i] = temp;
			}

			Console.WriteLine("\nReversed array:");
			for (int i = 0; i < numbers.Length; i++)
				Console.Write(numbers[i] + " ");

			Console.WriteLine();
		}
	}
}
