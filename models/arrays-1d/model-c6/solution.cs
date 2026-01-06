// Copyright (C) 2026~2027 janaalaa <ja8659808@gmail.com> Licensed under GNU GPLv3.
using System;
namespace Arrays1d
{
    public class ModelC6
    {
        public static void Run()
        {
            int[] numbers = new int[8];
            int count = 0;
            Console.WriteLine("Enter 8 integers:");
            for (int i = 0; i < numbers.Length; i++)
            {
                numbers[i] = int.Parse(Console.ReadLine());
            }
            for (int i = 1; i < numbers.Length; i++)
            {
                if (numbers[i] > numbers[i - 1])
                {
                    count++;
                }
            }
            Console.WriteLine("Number of times the value increases compared to the previous value: " + count);
        }
    }
}
