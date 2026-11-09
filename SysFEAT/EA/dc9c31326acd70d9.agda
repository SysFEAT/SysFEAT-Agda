{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Assurance Instrument: 
An Assurance Instrument is a resource or course of actions used by an Assurance System to achieve its objectives.For instance:Actions plans are course of actions aimed at solving incidents.Data Controls are mechanisms used to ensure data quality and data integrityPrivacy Representatives are used to identify national entities in charge of privacy.

Documentation : https://framework.sysfeat.com/pages/dc9c31326acd70d9.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.dc9c31326acd70d9 where -- ========== AssuranceInstrument

open import Agda.Primitive
open import SysFEAT.SOF.01ce05606859794a public -- InitiativeInstrument

AssuranceInstrument : ∀ (u : Level) → ClassOfMixedOrderEntity u 
AssuranceInstrument u  = MixedOrderEntity u 


--  AssuranceInstrument is subTypeOf InitiativeInstrument
st-dc9c31326acd70d9-01ce05606859794a : ∀ {u v} → (AssuranceInstrument u) ⊏⋆ₑ (InitiativeInstrument v)
st-dc9c31326acd70d9-01ce05606859794a = trivialPolySubTypeOfEntity


-- == Relations =======================
