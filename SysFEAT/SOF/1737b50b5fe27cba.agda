{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Governance Event: 
A Governance Event is any event that has an impact on the management and governance of an Enduring Initiative.This includes the result of Assessments, Decisions, recorded Incidents, Drivers, etc.

Documentation : https://framework.sysfeat.com/pages/1737b50b5fe27cba.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.1737b50b5fe27cba where -- ========== GovernanceEvent

open import Agda.Primitive
open import SysFEAT.UpperOntology.4df9512266826e23 public -- Individual
open import SysFEAT.SOF.6662916b68dd5f84 public -- GovernanceInstrument
open import SysFEAT.SOF.0eb95f356855bf94 public -- AssetBlock

GovernanceEvent : ClassOfIndividual
GovernanceEvent = Individual


--  GovernanceEvent is subTypeOf Individual
st-1737b50b5fe27cba-4df9512266826e23 : GovernanceEvent ⊏ₑ Individual
st-1737b50b5fe27cba-4df9512266826e23 = polySubTypeOf-identity

--  GovernanceEvent withAspect GovernanceInstrument
st-1737b50b5fe27cba-6662916b68dd5f84 : GovernanceEvent ⊏ₐₑ (GovernanceInstrument lzero)
st-1737b50b5fe27cba-6662916b68dd5f84 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Event Subject: -}
eventSubject : ∀ {u} →  Linkage GovernanceEvent (AssetBlock u)
eventSubject = make_Relation "Event Subject" "Event Subject"

postulate -- eventSubject is subTypeOf existentialDependency
  st-0f642d4d6859ad70-cbfce7da685358e9  : eventSubject  ⊏⋆ᵣ  existentialDependency {lzero} {lzero}
