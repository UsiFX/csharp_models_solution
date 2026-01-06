// Copyright (C) 2026~2027 janaalaa <ja8659808@gmail.com> Licensed under GNU GPLv3.
using System;
namespace Arrays1d
{
    public class ModelC5
    {
        public static void Run()
        {
            int[] numbers = new int[10];
            Console.WriteLine("Enter 10 integers:");
            for (int i = 0; i < numbers.Length; i++)
            {
                numbers[i] = int.Parse(Console.ReadLine());
            }
            int newArraySize = numbers.Length / 2;
            int[] oddIndexNumbers = new int[newArraySize];
            int j = 0;
            for (int i = 1; i < numbers.Length; i += 2)
            {
                oddIndexNumbers[j] = numbers[i];
                j++;
            }
            Console.WriteLine("\nElements at odd indices:");
            for (int i = 0; i < oddIndexNumbers.Length; i++)
            {
                Console.Write(oddIndexNumbers[i] + " ");
            }
            Console.WriteLine();
        }
    }
}
