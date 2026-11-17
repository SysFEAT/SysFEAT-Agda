{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptualization Family: 
The Conceptualization Family is an Asset Category Family that categorizes by conceptualisation level of Operating Assets.

Documentation : https://framework.sysfeat.com/pages/1a461dd76afb55cd.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.1a461dd76afb55cd where -- ========== ConceptualizationFamily

open import Agda.Primitive
open import SysFEAT.SOF.1a4623e76afb6497 public -- AbstractionFamily

ConceptualizationFamily : ∀ (u : Level) → AbstractionSchema u
ConceptualizationFamily u = AbstractionFamily u


--  ConceptualizationFamily is subTypeOf AbstractionFamily
st-1a461dd76afb55cd-1a4623e76afb6497 : ∀ {u v} → ConceptualizationFamily u ⊏⋆ₑ AbstractionFamily v
st-1a461dd76afb55cd-1a4623e76afb6497 = trivialPolySubTypeOfEntity


