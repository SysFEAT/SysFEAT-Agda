{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Measurement Schema: 
A Measurement Schema is a top level grouping of Condition Category(ies) that belong to a common domain.

Documentation : https://framework.sysfeat.com/pages/6f9c71356a0f3116.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.6f9c71356a0f3116 where -- ========== MeasurementSchema

open import Agda.Primitive
open import SysFEAT.UpperOntology.220d23706ad71311 public -- CategorizationSchema

MeasurementSchema : ∀ (u : Level) → MetaClass (lsuc u) 
MeasurementSchema u  = ClassOfEntity (lsuc u) 


--  MeasurementSchema is subTypeOf CategorizationSchema
st-6f9c71356a0f3116-220d23706ad71311 : ∀ {u v} → MeasurementSchema u ⊏⋆ₑ CategorizationSchema v
st-6f9c71356a0f3116-220d23706ad71311 = trivialPolySubTypeOfEntity


