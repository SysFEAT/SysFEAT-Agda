{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Policy Framework Category: 
Policy Framework Category is a place holder for Policy Category(ies) that are managed (owned by) in a Policy Framework.

Documentation : https://framework.sysfeat.com/pages/7e347b2a6af37993.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOPAS.7e347b2a6af37993 where -- ========== PolicyFrameworkCategory

open import Agda.Primitive
open import SysFEAT.SOF.7e3474f06af36c2f public -- PolicyCategoryType

PolicyFrameworkCategory : ∀ (u : Level) → MetaClass (lsuc u)
PolicyFrameworkCategory u = MetaClass u


--  PolicyFrameworkCategory is subTypeOf PolicyCategoryType
st-7e347b2a6af37993-7e3474f06af36c2f : ∀ {u v} → PolicyFrameworkCategory u ⊏⋆ₑ PolicyCategoryType v
st-7e347b2a6af37993-7e3474f06af36c2f = trivialPolySubTypeOfEntity


