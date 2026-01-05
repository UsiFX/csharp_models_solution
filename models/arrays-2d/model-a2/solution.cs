// Copyright (C) 2026~2027 UsiFX <xprjkts@gmail.com> Licensed under GNU GPLv3.

using System;

namespace Models.Arrays2d
{
	public static class ModelA2
	{
		public static void Run()
		{
			int [,] array =
			{
				{ 22, 16, 90 },
				{ 37, 18, 50 }
			};


			Console.Write("Elements which less than 25 and divisible by 3: ");

			for (int numberofRows = 0; numberofRows < array.GetLength(0); numberofRows++)
				for (int numberofColumns = 0; numberofColumns < array.GetLength(1); numberofColumns++)
					if (array[numberofRows,numberofColumns] <= 25 && array[numberofRows,numberofColumns] % 3 == 0)
						Console.Write(array[numberofRows,numberofColumns] + " ");

			Console.Write("\nElements which greater than 25 and divisible by 2: ");

			for (int numberofRows = 0; numberofRows < array.GetLength(0); numberofRows++)
				for (int numberofColumns = 0; numberofColumns < array.GetLength(1); numberofColumns++)
					if (array[numberofRows,numberofColumns] >= 25 && array[numberofRows,numberofColumns] % 2 == 0)
						Console.Write(array[numberofRows,numberofColumns] + " ");

			Console.WriteLine();
		}
	}
}
