{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Environmental Category: 
An Environmental Condition Type is a class of  Environmental Property Type.Example: PESTEL (political, economic, social, environmental, legal),  physical conditions (weather conditions, terrain conditions,)It is used to group Environmental Property Type(ies) by domain of concerns represented by Schema of Measurement.

Documentation : https://framework.sysfeat.com/pages/4efc77266ae49efb.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.4efc77266ae49efb where -- ========== EnvironmentalCategory

open import Agda.Primitive
open import SysFEAT.SOF.4efc6c5b6ae48f78 public -- ConditionCategory

EnvironmentalCategory : ∀ (u : Level) → CategorizationFamily u 
EnvironmentalCategory u  = ConceptCategory u 


--  EnvironmentalCategory is subTypeOf ConditionCategory
st-4efc77266ae49efb-4efc6c5b6ae48f78 : ∀ {u v} → EnvironmentalCategory u ⊏⋆ₑ ConditionCategory v
st-4efc77266ae49efb-4efc6c5b6ae48f78 = trivialPolySubTypeOfEntity


