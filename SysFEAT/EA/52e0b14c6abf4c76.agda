{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Program Asset: 


Documentation : https://framework.sysfeat.com/pages/52e0b14c6abf4c76.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.52e0b14c6abf4c76 where -- ========== ProgramAsset

open import Agda.Primitive
open import SysFEAT.SOF.01ce05606859794a public -- InitiativeInstrument

ProgramAsset : ∀ (u : Level) → ClassOfMixedOrderEntity u 
ProgramAsset u  = MixedOrderEntity u 


--  ProgramAsset is subTypeOf InitiativeInstrument
st-52e0b14c6abf4c76-01ce05606859794a : ∀ {u v} → (ProgramAsset u) ⊏⋆ₑ (InitiativeInstrument v)
st-52e0b14c6abf4c76-01ce05606859794a = trivialPolySubTypeOfEntity


