// Copyright (C) 2026~2027 janaalaa <ja8659808@gmail.com> Licensed under GNU GPLv3.
using System;

namespace Arrays1d
{
    public class ModelC2
    {
        public static void Run()
        {
            int[] numbers = { 44, 4, 18, 2, 8, 64, 32, 3, 47, 50, 22, 12 };

            Console.WriteLine("Numbers between 25 and 75:");
            foreach (int num in numbers)
            {
                if (num >= 25 && num <= 75)
                {
                    Console.Write(num + " ");
                }
            }
            Console.WriteLine(); 
        }
    }
}
