// Copyright (C) 2026~2027 janaalaa <ja8659808@gmail.com> Licensed under GNU GPLv3.
using System;

namespace Arrays1d
{
    public class ModelC3
    {
        public static void Run()
        {
            Console.Write("Enter n (<= 10): ");
            int n = int.Parse(Console.ReadLine());

            int[] numbers = new int[n];
            double sum = 0;

            Console.WriteLine("Enter " + n + " integers:");
            for (int i = 0; i < n; i++)
            {
                numbers[i] = int.Parse(Console.ReadLine());
                sum += numbers[i];
            }

            double average = sum / n;

            Console.WriteLine("\nElements greater than the average:");
            for (int i = 0; i < n; i++)
            {
                if (numbers[i] > average)
                {
                    Console.WriteLine(numbers[i]);
                }
            }
        }
    }
}
