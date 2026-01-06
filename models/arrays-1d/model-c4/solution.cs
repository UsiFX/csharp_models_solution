// Copyright (C) 2026~2027 janaalaa <ja8659808@gmail.com> Licensed under GNU GPLv3.
using System;

namespace Arrays1d
{
    public class ModelC4
    {
        public static void Run()
        {
            int[] numbers = new int[8];
            int evenCount = 0;
            int oddCount = 0;

            Console.WriteLine("Enter 8 integers:");
            for (int i = 0; i < numbers.Length; i++)
            {
                numbers[i] = int.Parse(Console.ReadLine());
                if (numbers[i] % 2 == 0)
                    evenCount++;
                else
                    oddCount++;
            }

            Console.WriteLine("Even: " + evenCount);
            Console.WriteLine("Odd: " + oddCount);
        }
    }
}
