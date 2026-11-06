{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Family of Measurement: 
A Family of Measurement is a top level grouping of Condition Category(ies) that belong to a common domain.

Documentation : https://framework.sysfeat.com/pages/6f9c71356a0f3116.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.6f9c71356a0f3116 where -- ========== FamilyOfMeasurement

open import Agda.Primitive
open import SysFEAT.UpperOntology.003302806ae27b7c public -- FourthOrderClass
open import SysFEAT.UpperOntology.220d23706ad71311 public -- CategorizationFamily

FamilyOfMeasurement : ∀ (u : Level) → MetaClass u 
FamilyOfMeasurement u  = ClassOfEntity u 


--  FamilyOfMeasurement is subTypeOf FourthOrderClass
--st-6f9c71356a0f3116-003302806ae27b7c : ∀ {u} → (FamilyOfMeasurement u) ⊏ₘₑ FourthOrderClass
--st-6f9c71356a0f3116-003302806ae27b7c = polySubTypeOf-identity

--  FamilyOfMeasurement is subTypeOf CategorizationFamily
st-6f9c71356a0f3116-220d23706ad71311 : ∀ {u v} → (FamilyOfMeasurement u) ⊏⋆ₑ (CategorizationFamily v)
st-6f9c71356a0f3116-220d23706ad71311 = trivialPolySubTypeOfEntity


