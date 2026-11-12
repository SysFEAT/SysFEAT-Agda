{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Policy Category: 
A Policy Category is a classification of policies. In regulations, it represents sections of the law.

Documentation : https://framework.sysfeat.com/pages/7e3474f06af36c2f.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.7e3474f06af36c2f where -- ========== PolicyCategory

open import Agda.Primitive
open import SysFEAT.UpperOntology.629565166ad71b60 public -- ConceptCategory
open import SysFEAT.SOF.9397c3d86877842f public -- PolicyAsset

PolicyCategory : ∀ (u : Level) → CategorizationFamily u 
PolicyCategory u  = ConceptCategory u 


--  PolicyCategory is subTypeOf ConceptCategory
st-7e3474f06af36c2f-629565166ad71b60 : ∀ {u v} → PolicyCategory u ⊏⋆ₑ ConceptCategory v
st-7e3474f06af36c2f-629565166ad71b60 = trivialPolySubTypeOfEntity

--  PolicyCategory is subTypeOf PolicyAsset
st-7e3474f06af36c2f-9397c3d86877842f : ∀ {u v} → PolicyCategory u ⊏⋆ₑ PolicyAsset (lsuc( v))
st-7e3474f06af36c2f-9397c3d86877842f = trivialPolySubTypeOfEntity


-- == Relations =======================
