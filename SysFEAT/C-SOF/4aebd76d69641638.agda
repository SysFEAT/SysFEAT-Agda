{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Element: 
Conceptual Element is a Mixed-Order Entity that represents the naming aspect of  Conceptual Entity Assets and Concept Relations.

Documentation : https://framework.sysfeat.com/pages/4aebd76d69641638.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.4aebd76d69641638 where -- ========== ConceptualElement

open import Agda.Primitive
open import SysFEAT.UpperOntology.23d5249e68510ff9 public -- Element

ConceptualElement : ∀ (u : Level) → ClassOfElement u 
ConceptualElement u  = Element u 


--  ConceptualElement is subTypeOf Element
st-4aebd76d69641638-23d5249e68510ff9 : ∀ {u v} → (ConceptualElement u) ⊏⋆ₑ (Element v)
st-4aebd76d69641638-23d5249e68510ff9 = trivialPolySubTypeOfEntity


