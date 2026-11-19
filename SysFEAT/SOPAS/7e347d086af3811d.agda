{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Policy Category: 
A Business Policy Category defines a classification of related Business Policys.

Documentation : https://framework.sysfeat.com/pages/7e347d086af3811d.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOPAS.7e347d086af3811d where -- ========== BusinessPolicyCategory

open import Agda.Primitive
open import SysFEAT.SOPAS.7e347b2a6af37993 public -- PolicyFrameworkCategory

BusinessPolicyCategory : ∀ (u : Level) → MetaClass (lsuc u)
BusinessPolicyCategory u = MetaClass u


--  BusinessPolicyCategory is subTypeOf PolicyFrameworkCategory
st-7e347d086af3811d-7e347b2a6af37993 : ∀ {u v} → BusinessPolicyCategory u ⊏⋆ₑ PolicyFrameworkCategory v
st-7e347d086af3811d-7e347b2a6af37993 = trivialPolySubTypeOfEntity


