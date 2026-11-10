{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Measure Property Type: 
A Measure Property Type is a Condition Property Type that expresses a type of measurement (Time, Mass, Cost, ..) and define the units used for measures (minutes, kg, euros, etc.).Examples:- Time to deliver in minutes.- Delivery cost in kilo Euros.Condition Property Types are described by Measure Unit: kg, Liter, Gallon, Hour, Minute.Condition Property Types are used to constrain Asset Blocks in the context of non-functional requirement analysis and Value Proposition analysis.

Documentation : https://framework.sysfeat.com/pages/e53af74b66e37e5d.htm

External references:
  Wikipeddia - List of quality attributes: https://en.wikipedia.org/wiki/List_of_system_quality_attributes
  ISO 15926 - ClassOfProperty: https://15926.blog/topics/data-model/index.htm#ClassOfProperty
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e53af74b66e37e5d where -- ========== MeasurePropertyType

open import Agda.Primitive
open import SysFEAT.SOF.e53af71366e37de2 public -- ConditionPropertyType
open import SysFEAT.SOF.4efc76226ae49da5 public -- MeasurementCategory

MeasurePropertyType : ThirdOrderClass
MeasurePropertyType = PropertyType


--  MeasurePropertyType is subTypeOf ConditionPropertyType
st-e53af74b66e37e5d-e53af71366e37de2 : MeasurePropertyType ⊏ₑ ConditionPropertyType
st-e53af74b66e37e5d-e53af71366e37de2 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Measurement Category: 
The Measurement Category that a Measure Property Type belongs to.Example:-   Delivery Time  belongs to the  Performance  category.
-}
measurementCategory : ∀ {u} →  Linkage MeasurePropertyType (MeasurementCategory u)
measurementCategory = make_subTypeOf "Measurement Category" "Measurement Category"

postulate -- measurementCategory is subTypeOf conditionCategory
  st-4efc77496ae49f78-4efc6ca86ae4901b  : ∀ {u} → measurementCategory   {u}  ⊏⋆ᵣ  conditionCategory   {u}
