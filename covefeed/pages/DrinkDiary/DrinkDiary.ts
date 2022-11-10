import { APIEndpoint } from '../api/Endpoint Interfaces/apiEndPoint'
import {Drink} from '../api/Endpoint Interfaces/Drink'
export interface DrinkDiary extends APIEndpoint {
    drinks: Drink[]
}