object SumOfMultiples {
  def sum(factors: Set[Int], limit: Int): Int = 
    (1 until limit).filter(isMultipleOf(factors)).sum

  def isMultipleOf(factors: Set[Int])(num: Int): Boolean = 
    factors.exists(num % _ == 0)
}

