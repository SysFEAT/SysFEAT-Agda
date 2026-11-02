{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Policity Decision Option: 


Documentation : https://framework.sysfeat.com/pages/5e32ba416929b430.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.5e32ba416929b430 where -- ========== PolicityDecisionOption

open import Agda.Primitive
open import SysFEAT.UpperOntology.b85efd0868df48b1 public -- PropertyValue
open import SysFEAT.SOF.97e0a19a68dd71de public -- PolicyapplicabilityStatus

PolicityDecisionOption : Property
PolicityDecisionOption = PropertyValue


--  PolicityDecisionOption is subTypeOf PropertyValue
st-5e32ba416929b430-b85efd0868df48b1 : PolicityDecisionOption ⊏ₑ PropertyValue
st-5e32ba416929b430-b85efd0868df48b1 = polySubTypeOf-identity

postulate -- PolicityDecisionOption is PowerInstanceOf Policy applicability Status
  pi-5e32ba696929b491 : PolicityDecisionOption ∷ₚₑ PolicyapplicabilityStatus

-- == Relations =======================
