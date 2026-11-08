{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Event Concept Type: 
The powerType of Event Concept.

Documentation : https://framework.sysfeat.com/pages/40cd59906ade3231.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.40cd59906ade3231 where -- ========== EventConceptType

open import Agda.Primitive
open import SysFEAT.C-SOF.2c9c90e16adb8d02 public -- ConceptualEntityType

EventConceptType : ClassOfElement
EventConceptType = Element


--  EventConceptType is subTypeOf ConceptualEntityType
st-40cd59906ade3231-2c9c90e16adb8d02 : EventConceptType ⊏ₑ ConceptualEntityType
st-40cd59906ade3231-2c9c90e16adb8d02 = polySubTypeOf-identity


-- == Relations =======================
