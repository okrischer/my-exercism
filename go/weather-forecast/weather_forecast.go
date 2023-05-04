// Package weather implements a simple routine for making weather forecasts.
package weather

// CurrentCondition describes the current weather condition.
var CurrentCondition string

// CurrentLocation represents the location for which a weather forecast will be made.
var CurrentLocation string

// Forecast returns a string literal describing the weather condition for a given location.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
