{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Assurance Instrument: 
A Data Assurance Instrument is a resource or course of actions used by an Data Catalog to achieve its objectives.For instance:Actions plans are course of actions aimed at solving Data breaches.Data Controls are mechanisms used to ensure data quality and data integrityData Processors are used to processings involved in Data Lineages.

Documentation : https://framework.sysfeat.com/pages/622b7c7d6ae3438e.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.622b7c7d6ae3438e where -- ========== DataAssuranceInstrument

open import Agda.Primitive
open import SysFEAT.EA.dc9c31326acd70d9 public -- AssuranceInstrument

DataAssuranceInstrument : ∀ (u : Level) → ClassOfMixedOrderEntity u 
DataAssuranceInstrument u  = MixedOrderEntity u 


--  DataAssuranceInstrument is subTypeOf AssuranceInstrument
st-622b7c7d6ae3438e-dc9c31326acd70d9 : ∀ {u v} → (DataAssuranceInstrument u) ⊏⋆ₑ (AssuranceInstrument v)
st-622b7c7d6ae3438e-dc9c31326acd70d9 = trivialPolySubTypeOfEntity


-- == Relations =======================
