{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Control Measure Category: 
A category of measure aming at controlling conformity of asset associated to the Assurance Case.

Documentation : https://framework.sysfeat.com/pages/582e764f66f6a4cc.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.582e764f66f6a4cc where -- ========== ControlMeasureCategory

open import Agda.Primitive
open import SysFEAT.UpperOntology.308c3b3868e9141e public -- ClassOfMixedOrderEntity

ControlMeasureCategory : MixedOrderMetaClass
ControlMeasureCategory = ClassOfMixedOrderEntity


--  ControlMeasureCategory withAspect ClassOfMixedOrderEntity
st-582e764f66f6a4cc-308c3b3868e9141e : ControlMeasureCategory ⊏ₐₑ (ClassOfMixedOrderEntity (lsuc(lsuc(lzero))))
st-582e764f66f6a4cc-308c3b3868e9141e = polySubTypeOf-identity


