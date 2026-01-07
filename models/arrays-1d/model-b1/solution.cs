// Copyright (C) 2026~2027 UsiFX <xprjkts@gmail.com> Licensed under GNU GPLv3.

using System;

namespace Models.Arrays1d
{
	public static class ModelB1
	{
		public static void Run()
		{
			int[] array = new int[10];

			for(int readFromUser = 0; readFromUser < array.Length; readFromUser++)
			{
				Console.Write($"Enter element {readFromUser}: ");
				array[readFromUser] = Convert.ToInt32(Console.ReadLine()); 
			}

			for(int modifyArray = 0; modifyArray < array.Length; modifyArray++)
			{
				if(array[modifyArray] >= 6)
					array[modifyArray] -= 1;
				else
					array[modifyArray] += 3;
			}

			Console.Write("Modified array: ");
			foreach(int item in array)
				Console.Write(item + " ");

			Console.WriteLine();
		}
	}
}
