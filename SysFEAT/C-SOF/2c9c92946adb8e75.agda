{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

State Concept Type: 
A State Concept Type is Class ofConceptual Entity Type which is a state type of another Conceptual Entity Type.Example:- Employee is a state of Person. Its temporal boundaries are  hiring  and  departure  (see Event Concept).

Documentation : https://framework.sysfeat.com/pages/2c9c92946adb8e75.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.2c9c92946adb8e75 where -- ========== StateConceptType

open import Agda.Primitive
open import SysFEAT.C-SOF.2c9c90e16adb8d02 public -- ConceptualEntityType

StateConceptType : ClassOfElement
StateConceptType = Element


--  StateConceptType is subTypeOf ConceptualEntityType
st-2c9c92946adb8e75-2c9c90e16adb8d02 : StateConceptType ⊏ₑ ConceptualEntityType
st-2c9c92946adb8e75-2c9c90e16adb8d02 = polySubTypeOf-identity


-- == Relations =======================
