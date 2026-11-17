{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Level: 


Documentation : https://framework.sysfeat.com/pages/1a461f766afb5920.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.1a461f766afb5920 where -- ========== ResourceLevel

open import Agda.Primitive
open import SysFEAT.SOF.a04ea6866ae7465e public -- ConceptualizationLevel

ResourceLevel : ∀ (u : Level) → AbstractionCategoryType u
ResourceLevel u = AbstractionCategory u


--  ResourceLevel is subTypeOf ConceptualizationLevel
st-1a461f766afb5920-a04ea6866ae7465e : ∀ {u v} → ResourceLevel u ⊏⋆ₑ ConceptualizationLevel v
st-1a461f766afb5920-a04ea6866ae7465e = trivialPolySubTypeOfEntity


-- == Relations =======================
