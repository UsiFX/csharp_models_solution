// Copyright (C) 2026~2027 janaalaa <ja8659808@gmail.com> Licensed under GNU GPLv3.

using System;

namespace Models.Arrays1d
{
	public static class ModelD2
	{
		public static void Run()
		{
            Console.Write("Enter n (<= 12): ");
            int n = int.Parse(Console.ReadLine());

            int[] numbers = new int[n];

            Console.WriteLine("Enter the numbers: ");

            int max = 0;
            int maxIndex = 0;

            for (int i = 0; i < n; i++)
            {
                numbers[i] = int.Parse(Console.ReadLine());

                if (i == 0)
                {
                    max = numbers[i];
                    maxIndex = 0;
                }
                else if (numbers[i] > max)
                {
                    max = numbers[i];
                    maxIndex = i;
                }
            }
            Console.WriteLine("Index of first maximum element: " + maxIndex);
		}
	}
}
