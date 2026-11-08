{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Domain Map: 
A Concept Domain Map is a top level assembly of Concept Domains that defines the scope of information that Management System is responsible of.

Documentation : https://framework.sysfeat.com/pages/622b76b06ae334e6.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.622b76b06ae334e6 where -- ========== ConceptDomainMap

open import Agda.Primitive
open import SysFEAT.C-SOF.855a87506ae37dbc public -- ConceptDomainFamily
open import SysFEAT.SOF.00330ffb6ae2806c public -- InformationDomainMap
open import SysFEAT.C-SOF.6bf190796859b4ff public -- BusinessDictionaryBlock

ConceptDomainMap : ∀ (u : Level) → MetaClass u 
ConceptDomainMap u  = ClassOfEntity u 


--  ConceptDomainMap is subTypeOf ConceptDomainFamily
st-622b76b06ae334e6-855a87506ae37dbc : ∀ {u v} → (ConceptDomainMap u) ⊏⋆ₑ (ConceptDomainFamily v)
st-622b76b06ae334e6-855a87506ae37dbc = trivialPolySubTypeOfEntity

--  ConceptDomainMap is subTypeOf InformationDomainMap
st-622b76b06ae334e6-00330ffb6ae2806c : ∀ {u v} → (ConceptDomainMap u) ⊏⋆ₑ (InformationDomainMap v)
st-622b76b06ae334e6-00330ffb6ae2806c = trivialPolySubTypeOfEntity

--  ConceptDomainMap is subTypeOf BusinessDictionaryBlock
st-622b76b06ae334e6-6bf190796859b4ff : ∀ {u v} → (ConceptDomainMap u) ⊏⋆ₑ (BusinessDictionaryBlock v)
st-622b76b06ae334e6-6bf190796859b4ff = trivialPolySubTypeOfEntity


-- == Relations =======================
