// Copyright (C) 2026~2027 janaalaa <ja8659808@gmail.com> Licensed under GNU GPLv3.
using System;

namespace Arrays1d
{
    public class ModelC1
    {
        public static void Run()
        {
            Console.Write("Enter the size of the array: ");
            int n = int.Parse(Console.ReadLine());
            int[] numbers = new int[n];
            bool[] printed = new bool[n];

            Console.WriteLine("Enter the elements of the array:");
            for (int i = 0; i < n; i++)
            {
                numbers[i] = int.Parse(Console.ReadLine());
            }

            Console.WriteLine("\nThe array is:");
            for (int i = 0; i < n; i++)
            {
                Console.Write(numbers[i] + " ");
            }

            Console.WriteLine("\n\nElements that appear more than once:");
            for (int i = 0; i < n; i++)
            {
                if (printed[i]) continue;
                int count = 1;
                for (int j = i + 1; j < n; j++)
                {
                    if (numbers[i] == numbers[j])
                    {
                        count++;
                        printed[j] = true;
                    }
                }
                if (count > 1)
                {
                    Console.Write(numbers[i] + " ");
                }
           }

            Console.WriteLine(); 
        }
    }
}       
