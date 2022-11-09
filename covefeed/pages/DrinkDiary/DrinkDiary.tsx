import React from "react";
import { DrinkDiary } from "../api/Endpoint Interfaces/DrinkDiary";
import { useState } from "react";


interface Period {
    start_date?: Date
    end_date: Date
}

interface PeriodGrain {
    value: "day" | "week" | "month" | "3 months" | "6 months" | "year"

}

export function DrinkDiary(props: DrinkDiary) {

    var [periodGrain,setPeriodGrain] = useState({value: 'day'});
    var [period, setPeriod] = useState({end_date: getDate()});
    var [periodsAggregated, setPeriodsAggregate] = useState(false);

    const togglePeriodAggregation = () => setPeriodsAggregate(!periodsAggregated); 

    const selectPeriodGrain = (selectedGrain: PeriodGrain ) => {
        setPeriodGrain(selectedGrain)
    }

    const selectPeriod = (props: Period) => {
        setPeriod(props)
    }

    return (
        <>
        <canvas id="BarGraph">
        </canvas>
        <div className="drinkCalendarFilterBar">
            <button className="periodSelector"></button>
            <button className="periodGranularitySelector"></button>
            <button className="aggregatePeriodsToggle"></button>
        </div>
        <div className="drinkCalendar">
            <div className="calendarPeriod">
                <div className="periodTitle"></div>
                (
                periodAggregated
                ? 
                    <div className="aggregatedPeriod">
                        <div className="aggregatedPeriodElement"></div>
                    </div>
                : 
                    <div className="drink">
                        <div className="drinkElement"></div>
                    </div>
                )
            </div>
        </div>
        </>


    )
}
