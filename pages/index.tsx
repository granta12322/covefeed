import Head from 'next/head'
import Image from 'next/image'
import styles from '../styles/Home.module.css'

import React from 'react'
import { useState } from 'react'
import { DrinkItem } from './DrinkDiary/DrinkItem/DrinkItem'
export default function Home() { 
  var [navBarShown,setNavBarSown] = useState(false);

  var [settings,setSettings] = useState({}); // Get settings from database.
  var [page, setPage] = useState({})
  return (
<>

<head>

</head>

<body>
  <DrinkItem/>
  <div className='topBar'>
    <button className='navToggle'></button>
    <img className='logo'/>
    <button className='submitDrink'></button>
  </div>
  <div className='page'></div>
</body>
</>
)}
