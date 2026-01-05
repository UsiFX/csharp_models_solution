// Copyright (C) 2026~2027 UsiFX <xprjkts@gmail.com> Licensed under GNU GPLv3.

using System;

namespace Models.Arrays1d
{
	public static class ModelB2
	{
		public static void Run()
		{
			int[] firstArray = new int[3];
			int[] secondArray = new int[3];
			int[] finalArray = new int[3];

			for(int firstRead = 0; firstRead < firstArray.Length; firstRead++)
			{
				Console.Write($"Enter element {firstRead + 1} for first array: ");
				firstArray[firstRead] = Convert.ToInt32(Console.ReadLine());
			}

			for(int secondRead = 0; secondRead < secondArray.Length; secondRead++)
			{
				Console.Write($"Enter element {secondRead + 1} for second array: ");
				secondArray[secondRead] = Convert.ToInt32(Console.ReadLine());
			}

			for(int finalRead = 0; finalRead < finalArray.Length; finalRead++)
				finalArray[finalRead] = (firstArray[finalRead] + secondArray[finalRead]) * 3;

			Console.Write("Final modified array: ");
			foreach(int item in finalArray)
				Console.Write(item + " ");

			Console.WriteLine();
		}
	}
}
