// Copyright (C) 2026~2027 janaalaa <ja8659808@gmail.com> Licensed under GNU GPLv3.

using System;

namespace Models.Arrays1d
{
	public static class ModelD8
	{
		public static void Run()
		{
			int[] numbers = new int[10]; 
			int sum = 0;
			Console.WriteLine("Enter 10 integers:");

			for (int i = 0; i < numbers.Length; i++)
			{
				Console.Write($"Number {i + 1}: ");
				numbers[i] = int.Parse(Console.ReadLine());
				sum += numbers[i];
			}

			Console.WriteLine("\nThe array is:");
			for (int i = 0; i < numbers.Length; i++)
				Console.Write(numbers[i] + " ");

			double average = (double)sum / numbers.Length;
			int roundedAverage = (int)Math.Round(average);
			Console.WriteLine($"\nAverage rounded to the nearest integer: {roundedAverage}");
		}
	}
}
