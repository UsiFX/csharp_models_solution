using System;

namespace Models.Arrays1D
{
	public class ModelB5
	{
		public static void Run()
		{
			int[] first_array = new int[3];
			int[] second_array = new int[3];
			int[] final_array =  new int[3];

			for (int first = 0; first < 3; first++)
			{
				Console.Write("Enter element " + (first + 1) + " for the first array: ");
				first_array[first] = Convert.ToInt32(Console.ReadLine());
			}

			for (int second = 0; second < 3; second++)
			{
				Console.Write("Enter element " + (second + 1) + " for the second array: ");
				second_array[second] = Convert.ToInt32(Console.ReadLine());
			}

			for (int sum = 0; sum < 3; sum++)
				final_array[sum] = first_array[sum] + second_array[sum];


			Console.Write("The resulting array after adding the two arrays is: ");
			for (int result = 0; result < 3; result++)
				Console.Write(final_array[result] + " ");

			Console.WriteLine("\n");
		}
	}
}
