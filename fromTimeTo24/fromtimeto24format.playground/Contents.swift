import Foundation

/*
 * Complete the 'timeConversion' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts STRING s as parameter.
 */

func timeConversion(s: String) -> String {
    // Write your code here
    let dateAsString = s
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "hh:mm:ssa"
    dateFormatter.locale = Locale(identifier: "en_US_POSIX") // fixes nil if device time in 24 hour format
    let date = dateFormatter.date(from: dateAsString)

    dateFormatter.dateFormat = "HH:mm:ss"
    let date24 = dateFormatter.string(from: date ?? Date())
    return date24

}

timeConversion(s: "07:05:45PM")
