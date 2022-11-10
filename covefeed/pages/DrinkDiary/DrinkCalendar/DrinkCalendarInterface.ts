import { PeriodGrain } from "../PeriodInterfaces"
import { Period } from "../PeriodInterfaces"
export interface APIEndpoint {
    periodGrain: PeriodGrain
    period: Period
}