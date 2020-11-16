import XCTest
@testable import MarsTimeConverter

final class MarsTimeConverterTests: XCTestCase {
    func testExample() {
        let now = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-DDD HH:mm:ss.SSS"
        formatter.timeZone = TimeZone(abbreviation: "PDT")
        print("PDT \(formatter.string(from: now as Date))")
        formatter.timeZone = TimeZone(abbreviation: "UTC")
        print("UTC \(formatter.string(from: now as Date))")
        let formatter2 = DateFormatter()
        formatter2.dateFormat = "yyyy-MM-dd HH:mm:ss"
        formatter2.timeZone = TimeZone(abbreviation: "UTC")

        let landing = formatter.date(from: "2021-049 19:49:00.000")!
        var (lmst, utc) = MarsTimeConversion.getMarsTime(for: Lander.M20, date: landing)
        XCTAssertEqual(lmst, "Sol 00000M15:00:00")
        XCTAssertEqual(utc, "2021-02-18 19:49:00")

        let sol0 = formatter.date(from: "2021-049 04:24:15.806")!
        (lmst, utc) = MarsTimeConversion.getMarsTime(for: Lander.M20, date: sol0)
        XCTAssertEqual(lmst, "Sol 00000M00:00:00")
        XCTAssertEqual(utc, "2021-02-18 04:24:15")

        let sol1 = formatter.date(from: "2021-050 05:03:51.050")!
        (lmst, utc) = MarsTimeConversion.getMarsTime(for: Lander.M20, date: sol1)
        XCTAssertEqual(lmst, "Sol 00001M00:00:00")
        XCTAssertEqual(utc, "2021-02-19 05:03:51")

        let sol2 = formatter.date(from: "2021-051 05:43:26.294")!
        (lmst, utc) = MarsTimeConversion.getMarsTime(for: Lander.M20, date: sol2)
        XCTAssertEqual(lmst, "Sol 00002M00:00:00")
        XCTAssertEqual(utc ,"2021-02-20 05:43:26")

        let sol911 = formatter2.date(from: "2015-02-27 22:05:43")!
        (lmst, utc) = MarsTimeConversion.getMarsTime(for: Lander.MSL, date: sol911)
        XCTAssertEqual(lmst, "Sol 00911M07:00:00")
        XCTAssertEqual(utc, "2015-02-27 22:05:43")

        let sol911pm = formatter2.date(from: "2015-02-28 10:25:31")!
        (lmst, utc) = MarsTimeConversion.getMarsTime(for: Lander.MSL, date: sol911pm)
        XCTAssertEqual(lmst, "Sol 00911M19:00:00")
        XCTAssertEqual(utc, "2015-02-28 10:25:31")

        let sol2943 = formatter2.date(from: "2020-11-16 04:40:59")!
        (lmst, utc) = MarsTimeConversion.getMarsTime(for: Lander.MSL, date: sol2943)
        XCTAssertEqual(lmst, "Sol 02943M16:37:48")
        XCTAssertEqual(utc, "2020-11-16 04:40:59")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
