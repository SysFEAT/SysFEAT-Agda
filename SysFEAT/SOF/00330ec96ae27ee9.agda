{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Information Domain Group: 
An Information Domain Group is an Information Domain Family that can be composed of other Information Domain Family.

Documentation : https://framework.sysfeat.com/pages/00330ec96ae27ee9.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.00330ec96ae27ee9 where -- ========== InformationDomainGroup

open import Agda.Primitive
open import SysFEAT.SOF.003315fd6ae286f1 public -- InformationDomainFamily
open import SysFEAT.SOF.cd90e5976ae187c0 public -- InformationDomain

InformationDomainGroup : ∀ (u : Level) → MetaClass (lsuc u) 
InformationDomainGroup u  = ClassOfEntity (lsuc u) 


--  InformationDomainGroup is subTypeOf InformationDomainFamily
st-00330ec96ae27ee9-003315fd6ae286f1 : ∀ {u v} → InformationDomainGroup u ⊏⋆ₑ InformationDomainFamily v
st-00330ec96ae27ee9-003315fd6ae286f1 = trivialPolySubTypeOfEntity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Information Domain Member: -}
informationDomainMember : ∀ {u v} →  Linkage (InformationDomainGroup u) (InformationDomain v)
informationDomainMember = make_classOfRelation "Information Domain Member" "Information Domain Member"

postulate -- informationDomainMember is subTypeOf memberClass
  st-003300fa6ae27701-c40ecc196ae113ff  : ∀ {u v} → informationDomainMember  {u}  {v}  ⊏⋆ᵣ  memberClass  {u ⊔ v}  {v}
