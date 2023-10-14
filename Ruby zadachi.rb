/* Задача 1 */

def is_prime(number)
  if number <= 1
    return false
  end

  for i in 2..Math.sqrt(number)
    if number % i == 0
      return false
    end
  end

  return true
end

def print_primes(start, end)
  for number in start..end
    if is_prime(number)
      puts number
    end
  end
end

print_primes(2, 100)


/* Задача 2 */

def greatest_common_divisor(a, b)
    while b != 0
      a, b = b, a % b
    end
  
    return a
  end
  
  def main
    a = gets.to_i
    b = gets.to_i
  
    puts greatest_common_divisor(a, b)
  end
  
  main


/* Задача 6 */

def bubble_sort(array)
    for i in 0...array.size
      for j in 0...array.size - i - 1
        if array[j] > array[j + 1]
          array[j], array[j + 1] = array[j + 1], array[j]
        end
      end
    end
  
    return array
  end
  
  def main
    array = [5, 2, 3, 1, 4]
  
    sorted_array = bubble_sort(array)
  
    puts sorted_array
  end
  
  main

  /* Задача 7 */

  def find_element(array, element)
    for i in 0...array.size
      if array[i] == element
        return i
      end
    end
  
    return -1
  end
  
  def main
    array = [1, 2, 3, 4, 5]
    element = 3
  
    index = find_element(array, element)
  
    puts "Елементът е намерен на индекс: #{index}"
  end
  
  main