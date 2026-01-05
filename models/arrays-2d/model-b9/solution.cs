// Copyright (C) 2026~2027 UsiFX <xprjkts@gmail.com> Licensed under GNU GPLv3.

using System;

namespace Models.Arrays2d
{
	public static class ModelB9
	{
		public static void Run()
		{
			int[,] array =
			{
				{ 2, 5, 6 },
				{ 7, 8, 9 }
			};

        	int rows = array.GetLength(0);
        	int cols = array.GetLength(1);

			Console.WriteLine("Sum of each column in each row: ");
			for (int countColumns = 0; countColumns < cols; countColumns++)
			{
				int sum = 0;

				for (int countRows = 0; countRows < rows; countRows++)
					sum += array[countRows, countColumns];

				Console.WriteLine(sum);
			}

			Console.WriteLine();
		}
	}
}
