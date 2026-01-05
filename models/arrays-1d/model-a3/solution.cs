// Copyright (C) 2026~2027 UsiFX <xprjkts@gmail.com> Licensed under GNU GPLv3.

using System;

namespace Models.Arrays1d
{
	public static class ModelA3
	{
		public static void Run()
		{
			int[] array = new int[6];
			int sum = 0;

			for (int Read = 0; Read < array.Length; Read++)
			{
				Console.Write($"Enter element {Read + 1}: ");
				array[Read] = Convert.ToInt32(Console.ReadLine());
			}

			for (int CheckElements = 0; CheckElements < array.Length; CheckElements++)
			{
				if( array[CheckElements] >= 15 && array[CheckElements] <= 25 )
				{
					array[CheckElements] += 2;
					sum +=  array[CheckElements];
				}
			}

			Console.WriteLine($"Sum of incremented elements between 15 to 25: {sum}.");

			Console.Write("Modified Array: ");
			foreach(int item in array)
				Console.Write(item + " ");

			Console.WriteLine();
		}
	}
}
