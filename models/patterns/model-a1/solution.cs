// Copyright (C) 2026~2027 UsiFX <xprjkts@gmail.com> Licensed under GNU GPLv3.

using System;

namespace Models.Patterns
{
	public static class ModelA1
	{
		public static void Run()
		{
			int Numbers = 9;

			for (int ControlRows = 4; ControlRows >= 1; ControlRows--)
			{
				for (int EachRow = 1; EachRow <= ControlRows; EachRow++)
				{
					Console.Write(Numbers + " ");
					Numbers--;
				}

				Console.WriteLine();
			}
		}
	}
}
