{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Name: 
A Concept Name is a preferred Concept Designation for a Conceptual Element in a given Business Vocabulary.

Documentation : https://framework.sysfeat.com/pages/d2b1093d6ab87cad.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.d2b1093d6ab87cad where -- ========== ConceptName

open import Agda.Primitive
open import SysFEAT.C-SOF.d2b1d3fd6ab779a3 public -- ConceptDesignation
open import SysFEAT.C-SOF.4aebd76d69641638 public -- ConceptualElement

ConceptName : AbstractEntityMetaClass
ConceptName = ClassOfAbstractEntity


--  ConceptName is subTypeOf ConceptDesignation
st-d2b1093d6ab87cad-d2b1d3fd6ab779a3 : ConceptName ⊏ₑ ConceptDesignation
st-d2b1093d6ab87cad-d2b1d3fd6ab779a3 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Named Element: -}
namedElement : ∀ {u} →  Linkage ConceptName (ConceptualElement u)
namedElement = make_classOfRelation "Named Element" "Named Element"

postulate -- namedElement is subTypeOf designation
  st-4aebdcae69641fd4-4aebdcf669642033  : namedElement  ⊏⋆ᵣ  designation
