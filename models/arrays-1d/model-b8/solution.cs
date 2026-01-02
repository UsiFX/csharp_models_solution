using System;

namespace Models.Arrays1D
{
	public class ModelB8
	{
		public static void Run()
		{
			int[] array = new int[7];
			for (int read = 0; read < array.Length; read++)
			{
				Console.Write("Enter element " + (read + 1) + ": ");
				array[read] = Convert.ToInt32(Console.ReadLine());
			}

			int largest = int.MinValue;
			int secondLargest = int.MinValue;

			for (int i = 0; i < array.Length; i++)
			{
				if (array[i] > largest)
				{
					secondLargest = largest;
					largest = array[i];
				}
				else if (array[i] > secondLargest && array[i] != largest)
					secondLargest = array[i];
			}

			if (secondLargest == int.MinValue)
				secondLargest = largest; // In case all elements are the same

			Console.WriteLine("The second largest element is: " + secondLargest);
		}
	}
}
