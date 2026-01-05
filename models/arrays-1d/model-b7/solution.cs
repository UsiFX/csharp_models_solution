// Copyright (C) 2026~2027 UsiFX <xprjkts@gmail.com> Licensed under GNU GPLv3.

using System;

namespace Models.Arrays1D
{
	public class ModelB7
	{
		public static void Run()
		{
			int[] array = new int[8];

			for (int read = 0; read < array.Length; read++)
			{
				Console.Write($"Enter element {read + 1}: ");
				array[read] = Convert.ToInt32(Console.ReadLine());
			}

			Console.Write("Enter element to search for: ");
			int searchElement = Convert.ToInt32(Console.ReadLine());

			int count = 0;

			for (int i = 0; i < array.Length; i++)
			{
				if (array[i] == searchElement)
					count++;
			}

			Console.WriteLine($"Element {searchElement} found {count} time(s) in the array.");
		}
	}
}
