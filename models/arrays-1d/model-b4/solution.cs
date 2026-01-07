// Copyright (C) 2026~2027 UsiFX <xprjkts@gmail.com> Licensed under GNU GPLv3.

using System;

namespace Models.Arrays1d
{
	public static class ModelB4
	{
		public static void Run()
		{
			int[] array = new int[10];
        	int[] modifiedArray = new int[array.Length];

			for(int readFromUser = 0; readFromUser < array.Length; readFromUser++)
			{
				Console.Write($"Enter element {readFromUser}: ");
				array[readFromUser] = Convert.ToInt32(Console.ReadLine()); 
			}

			for (int i = 0; i < array.Length; i++)
			{
				if (i % 2 == 0)
					modifiedArray[i] = array[i] + 3;
				else
					modifiedArray[i] = array[i] + 4;
			}

			Console.Write("Modified array: ");
			for(int i = 0; i < modifiedArray.Length; i++)
				Console.Write(modifiedArray[i] + " ");

			Console.WriteLine();
		}
	}
}
