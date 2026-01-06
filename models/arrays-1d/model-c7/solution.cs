// Copyright (C) 2026~2027 janaalaa <ja8659808@gmail.com> Licensed under GNU GPLv3.
using System;
namespace Arrays1d
{
    class ModelC7
    {
        public static void Run()
        {
            int[] numbers = new int[10];
            Console.WriteLine("Enter 10 integers:");
            for (int i = 0; i < numbers.Length; i++)
            {
                numbers[i] = int.Parse(Console.ReadLine());
            }
            Console.WriteLine("\nNumbers between 10 and 50 (inclusive):");
            foreach (int num in numbers)
            {
                if (num >= 10 && num <= 50)
                {
                    Console.Write(num + " ");
                }
            }
            Console.WriteLine(); 
        }
    }
}
