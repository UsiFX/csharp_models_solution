// Copyright (C) 2026~2027 UsiFX <xprjkts@gmail.com> Licensed under GNU GPLv3.

using System;

namespace Models.Arrays1D
{
	public class ModelA9
	{
		public static void Run()
		{
			int[] array = new int[10];

			for (int i = 1; i <= array.Length; i++)
			{
				Console.Write($"Enter element {i}: ");
				array[i - 1] = Convert.ToInt32(Console.ReadLine());
			}

			Console.Write("Elements at even indices: ");

			for (int print = 0; print < array.Length; print++)
			{
				if (print % 2 == 0)
					Console.Write(array[print + 1] + " ");
			}

			Console.WriteLine();
		}
	}
}
