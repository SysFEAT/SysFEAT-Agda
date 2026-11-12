{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Measurement Category: 
A Measurement Category is a category of Measure Property Type.It is used to group Measure Property Type(ies) by domain of concerns represented by Family of Measurements.Example: Performance, Security, Cost.

Documentation : https://framework.sysfeat.com/pages/4efc76226ae49da5.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.4efc76226ae49da5 where -- ========== MeasurementCategory

open import Agda.Primitive
open import SysFEAT.SOF.4efc6c5b6ae48f78 public -- ConditionCategory

MeasurementCategory : ∀ (u : Level) → CategorizationFamily u 
MeasurementCategory u  = ConceptCategory u 


--  MeasurementCategory is subTypeOf ConditionCategory
st-4efc76226ae49da5-4efc6c5b6ae48f78 : ∀ {u v} → MeasurementCategory u ⊏⋆ₑ ConditionCategory v
st-4efc76226ae49da5-4efc6c5b6ae48f78 = trivialPolySubTypeOfEntity


