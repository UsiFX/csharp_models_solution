// Copyright (C) 2026~2027 UsiFX <xprjkts@gmail.com> Licensed under GNU GPLv3.

using System;

namespace Models.Patterns
{
	public static class ModelD3
	{
		public static void Run()
		{
			int Numbers = 1;

			for (int ControlRows = 1; ControlRows <= 4; ControlRows++)
			{
				for (int EachRow = 1; EachRow <= ControlRows; EachRow++)
				{
					Console.Write(Numbers + " ");
					Numbers++;
				}

				Console.WriteLine();
			}
		}
	}
}
