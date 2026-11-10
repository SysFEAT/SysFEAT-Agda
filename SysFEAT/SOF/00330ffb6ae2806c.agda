{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Information Domain Map: 
An Information Domain Map is a top level grouping of Information Domain Family.Information Domain Maps are used :1) as top level entry points for Information Dictionary(ies),2) as functional scope for data management initiatives at the level of portfolio management ( Data Catalog), at the project level or at the Enterprise level (Enterprise Concept Map).

Documentation : https://framework.sysfeat.com/pages/00330ffb6ae2806c.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.00330ffb6ae2806c where -- ========== InformationDomainMap

open import Agda.Primitive
open import SysFEAT.SOF.003315fd6ae286f1 public -- InformationDomainFamily

InformationDomainMap : ∀ (u : Level) → MetaClass (lsuc u) 
InformationDomainMap u  = ClassOfEntity (lsuc u) 


--  InformationDomainMap is subTypeOf InformationDomainFamily
st-00330ffb6ae2806c-003315fd6ae286f1 : ∀ {u v} → InformationDomainMap u ⊏⋆ₑ InformationDomainFamily v
st-00330ffb6ae2806c-003315fd6ae286f1 = trivialPolySubTypeOfEntity


-- == Relations =======================
