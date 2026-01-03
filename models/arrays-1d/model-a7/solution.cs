// Copyright (C) 2026~2027 UsiFX <xprjkts@gmail.com> Licensed under GNU GPLv3.

using System;

namespace Models.Arrays1D
{
	public class ModelA7
	{
		public static void Run()
		{
			int[] array = new int[6];

			for (int read = 0; read < array.Length; read++)
			{
			    Console.Write("Enter element " + (read + 1) + ": ");
			    array[read] = Convert.ToInt32(Console.ReadLine());
			}

			for (int replace = 0; replace < array.Length; replace++)
			{
				if (replace == 0)
				{
					int temp = array[replace];
					array[replace] = array[array.Length - 1];
					array[array.Length - 1] = temp;
				}
			}

			Console.Write("Modified array: ");
			for (int print = 0; print < array.Length; print++)
				Console.Write(array[print] + " ");

			Console.WriteLine();

		}
	}
}

