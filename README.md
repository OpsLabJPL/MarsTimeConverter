# MarsTimeConverter

Conversion of Swift Dates to Mars Time for NASA Mars landed missions.

Example:

```
let landing = formatter.date(from: "2021-049 19:49:00.000")!
var (lmst, utc) = MarsTimeConversion.getMarsTime(for: Lander.M20, date: landing)
XCTAssertEqual(lmst, "Sol 00000M15:00:00")
XCTAssertEqual(utc, "2021-02-18 19:49:00")
```
To convert a Date, call MarsTimeConversion.getMarsTime(for:date)

Possible values for lander are:
Lander.M20 (Mars 2020 "Perseverance" rover)
Lander.MSL (Mars Science Laboratory "Curiosity" rover)

The function returns a tuple of:
(lmst, utc) consisting of
* local mean solar time of the Mars lander formatted as "Sol nnnnnMhh:mm:ss"
* UTC time of the provided input Date formatted as "yyyy-MM-dd hh:mm:ss"
