{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Behavior MetaClass: 


Documentation : https://framework.sysfeat.com/pages/a881197c6ad97047.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.a881197c6ad97047 where -- ========== BehaviorMetaClass

open import Agda.Primitive
open import SysFEAT.UpperOntology.60876d5c68de82f2 public -- BoundedIndividualMetaClass

BehaviorMetaClass : ThirdOrderClass
BehaviorMetaClass = ClassOfClassOfIndividual


--  BehaviorMetaClass is subTypeOf BoundedIndividualMetaClass
st-a881197c6ad97047-60876d5c68de82f2 : BehaviorMetaClass ⊏ₑ BoundedIndividualMetaClass
st-a881197c6ad97047-60876d5c68de82f2 = polySubTypeOf-identity


-- == Relations =======================
