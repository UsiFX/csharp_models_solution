// Copyright (C) 2026~2027 UsiFX <xprjkts@gmail.com> Licensed under GNU GPLv3.

using System;

namespace Models.Arrays1d
{
	public static class ModelA4
	{
		public static void Run()
		{
			int[] array = { 72, 101, 108, 111 };
			int[] sum = new int[4];

			Console.Write($"Original Array: ");
			foreach (int items in array)
				Console.Write(items + " ");

			for (int IncreaseElements = 0; IncreaseElements < array.Length; IncreaseElements++)
			{
				if (IncreaseElements == 1)
					continue;

				sum[IncreaseElements] += (array[IncreaseElements] += 6);
			}

			Console.WriteLine();
			Console.Write($"Modified Array: ");
			foreach (int items in array)
				Console.Write(items + " ");

			Console.WriteLine();

		}
	}
}
