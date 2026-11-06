{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Time Event: 
A Time Event is a Behavioral Event that signifies the happening of a time change used to coordinate Behavior Types.

Documentation : https://framework.sysfeat.com/pages/e0e9b20b657864ec.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e0e9b20b657864ec where -- ========== TimeEvent

open import Agda.Primitive
open import SysFEAT.SOF.24ae31d75ed1c747 public -- BehavioralEvent
open import SysFEAT.SOF.31cf367c6ad16c33 public -- PeriodType

TimeEvent : TemporalBoundingType
TimeEvent = TemporalBounding


--  TimeEvent is subTypeOf BehavioralEvent
st-e0e9b20b657864ec-24ae31d75ed1c747 : TimeEvent ⊏ₑ BehavioralEvent
st-e0e9b20b657864ec-24ae31d75ed1c747 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Time Change: -}
timeChange :  Linkage TimeEvent PeriodType
timeChange = make_classOfMeronymy "Time Change" "Time Change"

