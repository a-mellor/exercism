import scala.math.BigDecimal.RoundingMode

object SpaceAge {
  val yearInSeconds: BigDecimal = 31557600
  val mercuryOrbitalPeriod: Double = 0.2408467
  val venusOrbitalPeriod: Double = 0.6151972
  val marsOrbitalPeriod: Double = 1.8808158
  val jupiterOrbitalPeriod: Double = 11.862615
  val saturnOrbitalPeriod: Double = 29.447498
  val uranusOrbitalPeriod: Double = 84.016846
  val neptuneOrbitalPeriod: Double = 164.79132
  val roundTo: Int = 2

  def onEarth(age: Double): BigDecimal =
    (age / yearInSeconds).setScale(roundTo, RoundingMode.HALF_EVEN)

  def onMercury(age: Double): BigDecimal =
    onEarth(age / mercuryOrbitalPeriod)

  def onVenus(age: Double): BigDecimal = 
    onEarth(age / venusOrbitalPeriod)

  def onMars(age: Double): BigDecimal =
    onEarth(age / marsOrbitalPeriod)

  def onJupiter(age: Double): BigDecimal =
    onEarth(age / jupiterOrbitalPeriod)

  def onSaturn(age: Double): BigDecimal =
    onEarth(age / saturnOrbitalPeriod)

  def onUranus(age: Double): BigDecimal =
    onEarth(age / uranusOrbitalPeriod)
  
  def onNeptune(age: Double): BigDecimal =
    onEarth(age / neptuneOrbitalPeriod)
}
