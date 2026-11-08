{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Type: 
A Concept Type is a class of Concepts which have Concepts as instances: Concept Type classify Concepts.

Documentation : https://framework.sysfeat.com/pages/2c9c867b6adb80c1.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.2c9c867b6adb80c1 where -- ========== ConceptType

open import Agda.Primitive
open import SysFEAT.C-SOF.2c9c90e16adb8d02 public -- ConceptualEntityType

ConceptType : ClassOfElement
ConceptType = Element


--  ConceptType is subTypeOf ConceptualEntityType
st-2c9c867b6adb80c1-2c9c90e16adb8d02 : ConceptType ⊏ₑ ConceptualEntityType
st-2c9c867b6adb80c1-2c9c90e16adb8d02 = polySubTypeOf-identity


-- == Relations =======================
