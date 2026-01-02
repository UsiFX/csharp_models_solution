using System;

namespace Models.Arrays2D
{
	public class ModelA5
	{
		public static void Run()
		{
			int[,] array =
			{
				{ 22 ,16, 90 },
				{ 37, 18, 50 }
			};

			int max = array[0, 0];
			int min = array[0, 0];

			for (int i = 0; i < array.GetLength(0); i++)
			{
				for (int j = 0; j < array.GetLength(1); j++)
				{
					if (array[i, j] > max)
						max = array[i, j];

					if (array[i, j] < min)
						min = array[i, j];
				}
				Console.WriteLine("Smallest number is: " + min);
				Console.WriteLine("Largest number is: " + max);
			}
		}
	}
}
