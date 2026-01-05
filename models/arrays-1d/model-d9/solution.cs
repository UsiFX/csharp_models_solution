// Copyright (C) 2026~2027 UsiFX <xprjkts@gmail.com> Licensed under GNU GPLv3.
// Copyright (C) 2026~2027 Anonymous

using System;

namespace Models.Arrays1d
{
	public static class ModelD9
	{
		public static void Run()
		{

			int[] numbers = new int[9];

			Console.WriteLine("Enter 9 integers:");
			for (int i = 0; i < numbers.Length; i++)
			{
				Console.Write($"Number {i + 1}: ");
				numbers[i] = int.Parse(Console.ReadLine());
			}

			Console.Write("\nThe array is: ");
			for (int i = 0; i < numbers.Length; i++)
				Console.Write(numbers[i] + " ");

			int max = numbers[0];
			int min = numbers[0];

			for (int i = 1; i < numbers.Length; i++)
			{
				if (numbers[i] > max)
					max = numbers[i];
				if (numbers[i] < min)
					min = numbers[i];
			}
			
			Console.WriteLine($"\nMaximum value: {max}");
			Console.WriteLine($"Minimum value: {min}");
		}
	}
}
