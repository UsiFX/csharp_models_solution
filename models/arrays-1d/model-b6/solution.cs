using System;

namespace Models.Arrays1D
{
	public class ModelB6
	{
		public static void Run()
		{
			int[] array = new int[6];
			int[] temp = new int[6];

			for (int read = 0; read < array.Length; read++)
			{
				Console.WriteLine("Enter element " + (read + 1) + ": ");
				array[read] = Convert.ToInt32(Console.ReadLine());

				if (array[read] >= 0 && array[read] % 3 == 0)
				        temp[read] = (int)Math.Sqrt(array[read]);
			}

			for (int print = 0; print < temp.Length; print++)
			{
				if (temp[print] != 0)
					Console.WriteLine("Square root of element " + (print + 1) + " is: " + temp[print]);
			}
		}
	}
}
