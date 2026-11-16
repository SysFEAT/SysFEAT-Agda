{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Level: 
The  Conceptual Level classifies concepts describing a functional architecture of a system, independently of any The conceptual view is independant of any commitment to physical resources. See the Conceptual Operating Model.

Documentation : https://framework.sysfeat.com/pages/a04ea65b6ae745ef.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.a04ea65b6ae745ef where -- ========== ConceptualLevel

open import Agda.Primitive
open import SysFEAT.SOF.a04ea6866ae7465e public -- ConceptualizationLevel

ConceptualLevel : ∀ (u : Level) → AbstractionCategoryType u 
ConceptualLevel u  = AbstractionCategory u 


--  ConceptualLevel is subTypeOf ConceptualizationLevel
st-a04ea65b6ae745ef-a04ea6866ae7465e : ∀ {u v} → ConceptualLevel u ⊏⋆ₑ ConceptualizationLevel v
st-a04ea65b6ae745ef-a04ea6866ae7465e = trivialPolySubTypeOfEntity


-- == Relations =======================
