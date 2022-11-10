import React from "react";
import { DrinkDiary } from "./DrinkDiary"
import {DrinkCalendar} from "./DrinkCalendar/DrinkCalendar";
import { useState } from "react";
import {Period, PeriodGrain} from "./PeriodInterfaces"



export function DrinkDiary(settings: JSON) {

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
        <DrinkCalendar></DrinkCalendar>
        </>


    )
}
