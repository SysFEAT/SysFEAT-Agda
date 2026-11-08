{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

State Concept: 
A State Concept is Conceptual Entity which is a state of another Conceptual Entity.Example:- Employee is a state of Person. Its temporal boundaries are  hiring  and  departure  (see Event Concept).

Documentation : https://framework.sysfeat.com/pages/0626070868b25f1d.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.0626070868b25f1d where -- ========== StateConcept

open import Agda.Primitive
open import SysFEAT.C-SOF.2c9c92946adb8e75 public -- StateConceptType
open import SysFEAT.C-SOF.229b34eb5b3f79d2 public -- ConceptualEntity

StateConcept : StateConceptType
StateConcept = Unknown

postulate -- StateConcept is PowerInstanceOf State Concept Type
  pi-346537716ade458b : StateConcept ∷ₚₑ StateConceptType

-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- State of Conceptual Entity: -}
stateOfConceptualEntity :  Linkage StateConcept ConceptualEntity
stateOfConceptualEntity = make_classOfMeronymy "State of Conceptual Entity" "State of Conceptual Entity"

