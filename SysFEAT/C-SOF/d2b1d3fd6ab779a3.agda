{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Designation: 
In a given Business Vocabulary, a Concept Designation is a terminological representation that associates a Term to its corresponding Term.Example:The term  Effeil Tower  is used in English to designate the metalic tower located near the Seine, constructed by Gustave Eiffel.

Documentation : https://framework.sysfeat.com/pages/d2b1d3fd6ab779a3.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.d2b1d3fd6ab779a3 where -- ========== ConceptDesignation

open import Agda.Primitive
open import SysFEAT.C-SOF.3f066af36858706e public -- BusinessVocabularyBlock
open import SysFEAT.UpperOntology.3aca55ee6aa645c2 public -- ClassOfAbstractEntity
open import SysFEAT.C-SOF.67d36e746aa44590 public -- Term
open import SysFEAT.C-SOF.4aebd76d69641638 public -- ConceptualElement
open import SysFEAT.C-SOF.d2b1d72f6ab77a41 public -- Language

ConceptDesignation : AbstractEntityMetaClass
ConceptDesignation = ClassOfAbstractEntity


--  ConceptDesignation withAspect BusinessVocabularyBlock
st-d2b1d3fd6ab779a3-3f066af36858706e : ConceptDesignation ⊏ₐₑ (BusinessVocabularyBlock (lsuc(lzero)))
st-d2b1d3fd6ab779a3-3f066af36858706e = polySubTypeOf-identity

--  ConceptDesignation is subTypeOf ClassOfAbstractEntity
st-d2b1d3fd6ab779a3-3aca55ee6aa645c2 : ConceptDesignation ⊏ₑ ClassOfAbstractEntity
st-d2b1d3fd6ab779a3-3aca55ee6aa645c2 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Designating Term: -}
designatingTerm :  Linkage ConceptDesignation Term
designatingTerm = make_classOfRelation "Designating Term" "Designating Term"

postulate -- designatingTerm is subTypeOf existentialDependency
  st-67d373756aa44bf1-cbfce7da685358e9  : designatingTerm  ⊏⋆ᵣ  existentialDependency {lzero} {lzero}

-- -------------------------------------------------------------------------------------------- 
{- Designation: -}
designation : ∀ {u} →  Linkage ConceptDesignation (ConceptualElement u)
designation = make_classOfRelation "Designation" "Designation"

postulate -- designation is subTypeOf existentialDependency
  st-4aebdcf669642033-cbfce7da685358e9  : designation  ⊏⋆ᵣ  existentialDependency {lzero} {lzero}

-- -------------------------------------------------------------------------------------------- 
{- Designation Language: -}
designationLanguage :  Linkage ConceptDesignation Language
designationLanguage = make_classOfMeronymy "Designation Language" "Designation Language"

postulate -- designationLanguage is subTypeOf existentialDependency
  st-3d83bf246ad52159-cbfce7da685358e9  : designationLanguage  ⊏⋆ᵣ  existentialDependency {lzero} {lzero}
postulate -- designationLanguage is subTypeOf classOfMeronymy
  st-3d83bf246ad52159-031e09dc6ad586c4  : designationLanguage  ⊏⋆ᵣ  classOfMeronymy
