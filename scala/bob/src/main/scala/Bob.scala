object Bob {
  def response(statement: String): String = statement match {
    case statement if isShouting(statement) => "Whoa, chill out!"
    case statement if isQuestion(statement) => "Sure."
    case statement if isSilent(statement) => "Fine. Be that way!"
    case _ => "Whatever."
  }

  private def isShouting(statement: String) =
    isUppperCase(statement) && isNotNum(statement)

  private def isUppperCase(statement: String) =
    statement.toUpperCase() == statement

  private def isNotNum(statement: String) =
    statement.exists(_.isLetter)

  private def isQuestion(statement: String) =
    removeWhiteSpace(statement).endsWith("?")

  private def isSilent(statement: String) =
    removeWhiteSpace(statement).isEmpty()
  
  private def removeWhiteSpace(statement: String) =
    statement.trim
}
