// Copyright (C) 2026~2027 UsiFX <xprjkts@gmail.com> Licensed under GNU GPLv3.

using System;

namespace Models.Arrays1d
{
	public static class ModelB3
	{
		public static void Run()
		{
			int[] array = new int[6];
			int[] temp = new int[6];

			for (int read = 1; read <= array.Length; read++)
			{
				Console.Write($"Enter element {read}: ");
				array[read - 1] = Convert.ToInt32(Console.ReadLine());

				if (array[read - 1] >= 0 && array[read - 1] % 3 == 0 && array[read - 1] % 2 != 0)
				    temp[read - 1] = (int)Math.Sqrt(array[read - 1]);
			}

			for (int print = 0; print < temp.Length; print++)
			{
				if (temp[print] != 0)
					Console.WriteLine($"Square root of element {print + 1} is: {temp[print]}");
			}
		}
	}
}
