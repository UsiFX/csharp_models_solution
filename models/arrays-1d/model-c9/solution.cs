// Copyright (C) 2026~2027 janaalaa <ja8659808@gmail.com> Licensed under GNU GPLv3.
using System;

namespace Arrays1d
{
    class ModelC9
    {
        public static void Run()
        {
            int[] numbers = new int[8];
            int evenSum = 0;
            int oddSum = 0;
            Console.WriteLine("Enter 8 integers:");
            for (int i = 0; i < numbers.Length; i++)
            {
                numbers[i] = int.Parse(Console.ReadLine());
                if (numbers[i] % 2 == 0)
                    evenSum += numbers[i];
                else
                    oddSum += numbers[i];
            }
            Console.WriteLine("\nThe array is:");
            for (int i = 0; i < numbers.Length; i++)
            {
                Console.Write(numbers[i] + " ");
            }
            int difference = evenSum - oddSum;
            Console.WriteLine("\nDifference between sum of even and odd elements: " + difference);
        }
    }
}
