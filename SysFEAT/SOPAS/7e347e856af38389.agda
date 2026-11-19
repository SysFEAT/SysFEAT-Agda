{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Architecture Principle Category: 


Documentation : https://framework.sysfeat.com/pages/7e347e856af38389.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOPAS.7e347e856af38389 where -- ========== ArchitecturePrincipleCategory

open import Agda.Primitive
open import SysFEAT.SOPAS.7e347b2a6af37993 public -- PolicyFrameworkCategory

ArchitecturePrincipleCategory : ∀ (u : Level) → MetaClass (lsuc u)
ArchitecturePrincipleCategory u = MetaClass u


--  ArchitecturePrincipleCategory is subTypeOf PolicyFrameworkCategory
st-7e347e856af38389-7e347b2a6af37993 : ∀ {u v} → ArchitecturePrincipleCategory u ⊏⋆ₑ PolicyFrameworkCategory v
st-7e347e856af38389-7e347b2a6af37993 = trivialPolySubTypeOfEntity


