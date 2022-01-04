class problem19 {
    init() {}
    
    func is_leap_year(year: Int) -> Bool {
        if (year % 400 == 0) {
            return true
        }
        if (year % 100 == 0) {
            return false
        }
        if (year % 4 == 0) {
            return true
        }
        return false
    }

    func number_of_days(month: Int, year: Int) -> Int{
        if (month == 2) {
            return is_leap_year(year: year) ? 29 : 28
        }
        if ([4, 6, 9, 11].contains(month)) {
            return 30
        }
        return 31
    }

    func next_sunday(date: (Int,Int,Int)) -> (Int,Int,Int) {
        var (day, month, year) = date
        
        let days_in_month = number_of_days(month: month, year: year)
        day += 7
        if (day > days_in_month) {
            month += 1
            day = day % days_in_month
        }
        if (month > 12) {
            year += 1
            month = 1
        }
        
        return (day, month, year)
    }

    func run() -> Int {
        let start = (31,12,1899)
        var (day, month, year) = start
        
        var sum = 0
        while (year < 2001) {
            (day, month, year) = next_sunday(date: (day, month, year))
            //print((day, month, year))
            if (day == 1 && year > 1900 && year < 2001) {
                sum += 1
            }
        }
        
        print("\(sum) sundays on 1st of month")
        return sum
    }
}
