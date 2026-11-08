{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Domain Family: 


Documentation : https://framework.sysfeat.com/pages/855a87506ae37dbc.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.855a87506ae37dbc where -- ========== ConceptDomainFamily

open import Agda.Primitive
open import SysFEAT.SOF.003315fd6ae286f1 public -- InformationDomainFamily
open import SysFEAT.C-SOF.855a872c6ae37d5b public -- ConceptDomainGroup

ConceptDomainFamily : ∀ (u : Level) → MetaClass u 
ConceptDomainFamily u  = ClassOfEntity u 


--  ConceptDomainFamily is subTypeOf InformationDomainFamily
st-855a87506ae37dbc-003315fd6ae286f1 : ∀ {u v} → (ConceptDomainFamily u) ⊏⋆ₑ (InformationDomainFamily v)
st-855a87506ae37dbc-003315fd6ae286f1 = trivialPolySubTypeOfEntity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Family Part: -}
familyPart : ∀ {u v} →  Linkage (ConceptDomainFamily u) (ConceptDomainGroup v)
familyPart = make_classOfRelation "Family Part" "Family Part"

postulate -- familyPart is subTypeOf informationFamilyPart
  st-855a89456ae38154-0033168b6ae287f9  : ∀ {u v} → familyPart {u} {v}  ⊏⋆ᵣ  informationFamilyPart {u} {v}
