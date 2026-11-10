{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Environmental Property Type: 
An Environmental Property Type is a characteristic of the environment in which an Enterprise or its sub-systems are required to operate.Examples:. Terrain Type: muddy, frozen ground, deep snow, etc;. Light conditions: broad daylight, dusk, moonlit, etc;. Weather condition: stormy, sunny, cloudy, etc;. Polical conditions: political stability, level of education;. Economical conditions: exchange rates, inflation rate.

Documentation : https://framework.sysfeat.com/pages/e53af85b66e37f78.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e53af85b66e37f78 where -- ========== EnvironmentalPropertyType

open import Agda.Primitive
open import SysFEAT.SOF.e53af71366e37de2 public -- ConditionPropertyType
open import SysFEAT.SOF.4efc77266ae49efb public -- EnvironmentalCategory

EnvironmentalPropertyType : ThirdOrderClass
EnvironmentalPropertyType = PropertyType


--  EnvironmentalPropertyType is subTypeOf ConditionPropertyType
st-e53af85b66e37f78-e53af71366e37de2 : EnvironmentalPropertyType ⊏ₑ ConditionPropertyType
st-e53af85b66e37f78-e53af71366e37de2 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Environmental Category: 
The Environmental Category that an Environmental Property Type belongs to.Example:-   Economic growth  belongs to the  Policital Factor  category. 
-}
environmentalCategory : ∀ {u} →  Linkage EnvironmentalPropertyType (EnvironmentalCategory u)
environmentalCategory = make_subTypeOf "Environmental Category" "Environmental Category"

postulate -- environmentalCategory is subTypeOf conditionCategory
  st-4efc78bb6ae4a140-4efc6ca86ae4901b  : ∀ {u} → environmentalCategory   {u}  ⊏⋆ᵣ  conditionCategory   {u}
