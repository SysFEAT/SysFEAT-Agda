{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Synonym: 
A Concept Synonym is an alternative Concept Designation for a given Business Vocabulary.

Documentation : https://framework.sysfeat.com/pages/d2b109d66ab87e76.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.d2b109d66ab87e76 where -- ========== ConceptSynonym

open import Agda.Primitive
open import SysFEAT.C-SOF.d2b1d3fd6ab779a3 public -- ConceptDesignation
open import SysFEAT.C-SOF.4aebd76d69641638 public -- ConceptualElement

ConceptSynonym : AbstractEntityMetaClass
ConceptSynonym = ClassOfAbstractEntity


--  ConceptSynonym is subTypeOf ConceptDesignation
st-d2b109d66ab87e76-d2b1d3fd6ab779a3 : ConceptSynonym ⊏ₑ ConceptDesignation
st-d2b109d66ab87e76-d2b1d3fd6ab779a3 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Synonym: -}
synonym : ∀ {u} →  Linkage ConceptSynonym (ConceptualElement u)
synonym = make_classOfRelation "Synonym" "Synonym"

postulate -- synonym is subTypeOf designation
  st-4aebdd71696420d6-4aebdcf669642033  : synonym  ⊏⋆ᵣ  designation
