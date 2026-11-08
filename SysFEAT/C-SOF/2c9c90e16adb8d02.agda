{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Entity Type: 
A Conceptual Entity Typeis a class of concepts which have Conceptual Entitys as instances: Conceptual Entity Types classify Conceptual Entitys.

Documentation : https://framework.sysfeat.com/pages/2c9c90e16adb8d02.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.2c9c90e16adb8d02 where -- ========== ConceptualEntityType

open import Agda.Primitive
open import SysFEAT.EA.2c9c86dc6adb8147 public -- ConceptualEntityAsset
open import SysFEAT.UpperOntology.60876d5c68de82f2 public -- BoundedIndividualMetaClass

ConceptualEntityType : ClassOfElement
ConceptualEntityType = Element


--  ConceptualEntityType withAspect ConceptualEntityAsset
st-2c9c90e16adb8d02-2c9c86dc6adb8147 : ConceptualEntityType ⊏ₐₑ (ConceptualEntityAsset (lsuc(lsuc(lzero))))
st-2c9c90e16adb8d02-2c9c86dc6adb8147 = polySubTypeOf-identity

--  ConceptualEntityType is subTypeOf BoundedIndividualMetaClass
st-2c9c90e16adb8d02-60876d5c68de82f2 : ConceptualEntityType ⊏ₑ BoundedIndividualMetaClass
st-2c9c90e16adb8d02-60876d5c68de82f2 = polySubTypeOf-identity


-- == Relations =======================
