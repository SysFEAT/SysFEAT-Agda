{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Language: 
A Language is system of Concept Designation used to name things in a particular discipline

Documentation : https://framework.sysfeat.com/pages/d2b1d72f6ab77a41.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.d2b1d72f6ab77a41 where -- ========== Language

open import Agda.Primitive
open import SysFEAT.C-SOF.3f066af36858706e public -- BusinessVocabularyBlock
open import SysFEAT.UpperOntology.3aca55ee6aa645c2 public -- ClassOfAbstractEntity

Language : AbstractEntityMetaClass
Language = ClassOfAbstractEntity


--  Language withAspect BusinessVocabularyBlock
st-d2b1d72f6ab77a41-3f066af36858706e : Language ⊏ₐₑ (BusinessVocabularyBlock (lsuc(lzero)))
st-d2b1d72f6ab77a41-3f066af36858706e = polySubTypeOf-identity

--  Language is subTypeOf ClassOfAbstractEntity
st-d2b1d72f6ab77a41-3aca55ee6aa645c2 : Language ⊏ₑ ClassOfAbstractEntity
st-d2b1d72f6ab77a41-3aca55ee6aa645c2 = polySubTypeOf-identity


