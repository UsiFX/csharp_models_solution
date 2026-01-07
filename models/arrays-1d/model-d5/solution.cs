// Copyright (C) 2026~2027 janaalaa <ja8659808@gmail.com> Licensed under GNU GPLv3.

using System;

namespace Models.Arrays1d
{
	public static class ModelD5
	{
		public static void Run()
		{
			int[] numbers = new int[8];
			int evenIndexSum = 0;
			int oddIndexSum = 0;
			Console.WriteLine("Enter 8 integers:");
			
			for (int i = 0; i < numbers.Length; i++)
			{
				numbers[i] = int.Parse(Console.ReadLine());

				if (i % 2 == 0)
					evenIndexSum += numbers[i];
				else
					oddIndexSum += numbers[i];
			}

			Console.WriteLine("Sum of elements at even indices: " + evenIndexSum);
			Console.WriteLine("Sum of elements at odd indices: " + oddIndexSum);
		}
	}
}
