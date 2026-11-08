{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Term: 
A Term is word or expression used to designate a Conceptual Element.

Documentation : https://framework.sysfeat.com/pages/67d36e746aa44590.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.67d36e746aa44590 where -- ========== Term

open import Agda.Primitive
open import SysFEAT.C-SOF.3f066af36858706e public -- BusinessVocabularyBlock
open import SysFEAT.UpperOntology.3aca55ee6aa645c2 public -- ClassOfAbstractEntity

Term : AbstractEntityMetaClass
Term = ClassOfAbstractEntity


--  Term withAspect BusinessVocabularyBlock
st-67d36e746aa44590-3f066af36858706e : Term ⊏ₐₑ (BusinessVocabularyBlock (lsuc(lzero)))
st-67d36e746aa44590-3f066af36858706e = polySubTypeOf-identity

--  Term is subTypeOf ClassOfAbstractEntity
st-67d36e746aa44590-3aca55ee6aa645c2 : Term ⊏ₑ ClassOfAbstractEntity
st-67d36e746aa44590-3aca55ee6aa645c2 = polySubTypeOf-identity


