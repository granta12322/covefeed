import React from "react";
import { BrewingDevice } from "../../api/Endpoint Interfaces/BrewingDevice";
import { RoastedBean } from "../../api/Endpoint Interfaces/RoastedBean";

interface DrinkData {
    number?: number
    style?: string
    dose_mass?: string
    cost?: string
    rating?: number
    brewingDevice?: BrewingDevice 
    roastedBean?: RoastedBean
}

interface Rating {
    rating: string
}

export function DrinkItem(drink: DrinkData) {
    return (
        <div className="DrinkItem">
            <h1>{drink.number}</h1>
            <StarRating rating='3'/>
            <Bean/>
            
        </div>
    )
}

function StarRating(props: Rating) {
    return(
        <h1>{props.rating}</h1>
    )
}

function Bean() {

    let imgSource: string = "./staticFiles/Light_Roast.svg";
    let roastLevel = "light"

    if(roastLevel="light") {
        imgSource= "/Light_Roast.svg"
    }
    if(roastLevel="medium") {
        imgSource= "./staticFiles/Medium_Roast.svg"
    }
    if(roastLevel="dark") {
        imgSource= "./staticFiles/Dark_Roast.svg"
    }
    return(
        <img src={imgSource}/>
    )
}