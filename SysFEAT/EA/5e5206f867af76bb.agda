{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Person State: 
A particular state of a Person.

Documentation : https://framework.sysfeat.com/pages/5e5206f867af76bb.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.5e5206f867af76bb where -- ========== PersonState

open import Agda.Primitive
open import SysFEAT.EA.c7dad43c5ae92d25 public -- Person

PersonState : StateClass
PersonState = StateConcept



-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- State of Person: -}
stateOfPerson :  Linkage PersonState Person
stateOfPerson = make_meronymyRelation "State of Person" "State of Person"

