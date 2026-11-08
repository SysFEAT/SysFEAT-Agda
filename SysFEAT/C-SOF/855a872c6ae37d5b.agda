{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Domain Group: 


Documentation : https://framework.sysfeat.com/pages/855a872c6ae37d5b.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.855a872c6ae37d5b where -- ========== ConceptDomainGroup

open import Agda.Primitive
open import SysFEAT.C-SOF.855a87506ae37dbc public -- ConceptDomainFamily
open import SysFEAT.C-SOF.855a863b6ae3778d public -- ConceptDomain

ConceptDomainGroup : ∀ (u : Level) → MetaClass u 
ConceptDomainGroup u  = ClassOfEntity u 


--  ConceptDomainGroup is subTypeOf ConceptDomainFamily
st-855a872c6ae37d5b-855a87506ae37dbc : ∀ {u v} → (ConceptDomainGroup u) ⊏⋆ₑ (ConceptDomainFamily v)
st-855a872c6ae37d5b-855a87506ae37dbc = trivialPolySubTypeOfEntity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Member Domain: -}
memberDomain : ∀ {u v} →  Linkage (ConceptDomainGroup u) (ConceptDomain v)
memberDomain = make_classOfRelation "Member Domain" "Member Domain"

postulate -- memberDomain is subTypeOf informationDomainMember
  st-855a89b16ae38206-003300fa6ae27701  : ∀ {u v} → memberDomain {u} {v}  ⊏⋆ᵣ  informationDomainMember {u} {v}
