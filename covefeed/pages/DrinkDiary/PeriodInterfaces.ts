export interface Period {
    start_date?: Date
    end_date: Date
}

export interface PeriodGrain {
    value: "day" | "week" | "month" | "3 months" | "6 months" | "year"

}