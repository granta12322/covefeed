import React from "react"
export function DrinkCalendar() {

    return (
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
    )
        }