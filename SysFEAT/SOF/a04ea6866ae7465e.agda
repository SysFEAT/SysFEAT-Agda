{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptualization Level: 
The  Conceptualization Level classifies Operating Assets describing resources used to implement the operating model of the enterprise.

Documentation : https://framework.sysfeat.com/pages/a04ea6866ae7465e.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.a04ea6866ae7465e where -- ========== ConceptualizationLevel

open import Agda.Primitive
open import SysFEAT.SOF.1a4645156afb79dd public -- AbstractionCategory
open import SysFEAT.SOF.1a461dd76afb55cd public -- ConceptualizationFamily

ConceptualizationLevel : ∀ (u : Level) → AbstractionCategoryType u 
ConceptualizationLevel u  = AbstractionCategory u 


--  ConceptualizationLevel is subTypeOf AbstractionCategory
st-a04ea6866ae7465e-1a4645156afb79dd : ∀ {u v} → ConceptualizationLevel u ⊏⋆ₑ AbstractionCategory v
st-a04ea6866ae7465e-1a4645156afb79dd = trivialPolySubTypeOfEntity


-- == Relations =======================
