{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Capability Map: 
Top level assembly of Capabilitys and their dependencies which, together, specify a scope of added value (Outcome Events) pursued by Operational Transformations.

Documentation : https://framework.sysfeat.com/pages/c721cde56afd55b8.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.c721cde56afd55b8 where -- ========== CapabilityMap

open import Agda.Primitive
open import SysFEAT.UpperOntology.ad05c1986ae142c1 public -- EnumeratedFamily
open import SysFEAT.SOF.e78c5eb0661989f9 public -- InitiativeStage

CapabilityMap : ∀ (u : Level) → MetaClass (lsuc(lsuc u))
CapabilityMap u = MetaClass (lsuc  u)


--  CapabilityMap is subTypeOf EnumeratedFamily
st-c721cde56afd55b8-ad05c1986ae142c1 : ∀ {u v} → CapabilityMap u ⊏⋆ₑ EnumeratedFamily v
st-c721cde56afd55b8-ad05c1986ae142c1 = trivialPolySubTypeOfEntity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Initiative Stage: -}
initiativeStage : ∀ {u} →  Linkage (CapabilityMap u) InitiativeStage
initiativeStage = make_classOfRelation "Initiative Stage" "Initiative Stage"

