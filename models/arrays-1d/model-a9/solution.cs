int[] array = new int[10];

for (int i = 0; i < array.Length; i++)
{
    Console.Write("Enter element " + (i + 1) + ": ");
    array[i] = Convert.ToInt32(Console.ReadLine());
}

for (int print = 0; print < array.Length; print++)
{
    if (print % 2 == 0)
    {
        Console.Write("Element at even index " + print + ": ");
    }
}

Console.WriteLine(array[print]);