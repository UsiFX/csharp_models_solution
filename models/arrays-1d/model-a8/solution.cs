using System;

namespace Models.Arrays1D
{
	public class ModelA8
	{
		public static void Run()
		{
			int[] array = new int[6];

			for (int read = 0; read < array.Length; read++)
			{
				Console.Write("Enter element " + (read + 1) + ": ");
				array[read] = Convert.ToInt32(Console.ReadLine());
			}

			for (int grep = 0; grep < array.Length; grep++)
			{
				if (array[grep] < 0)
				array[grep] = Math.Abs(array[grep]);
			}

			Console.WriteLine("Modified array with absolute values: ");
			for (int print = 0; print < array.Length; print++)
				Console.WriteLine(array[print] + " ");

		}
	}
}
