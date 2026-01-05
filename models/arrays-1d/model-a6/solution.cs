// Copyright (C) 2026~2027 UsiFX <xprjkts@gmail.com> Licensed under GNU GPLv3.

using System;

namespace Models.Arrays1d
{
	public static class ModelA6
	{
		public static void Run()
		{
			int[] array = new int[6];
			int[] sum = new int[6];

			for (int Read = 0; Read < array.Length; Read++)
			{
				Console.Write($"Enter element {Read}: ");
				array[Read] = Convert.ToInt32(Console.ReadLine());
			}

			for (int Multiply = 1; Multiply <= array.Length; Multiply++)
				sum[Multiply - 1] += array[Multiply - 1] * Multiply;

			Console.Write("Elements multiplied by 6: ");
			foreach (int items in sum)
				Console.Write(items + " ");

			Console.WriteLine();
		}
	}
}
