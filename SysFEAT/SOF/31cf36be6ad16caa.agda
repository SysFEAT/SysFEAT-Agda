{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Period: 


Documentation : https://framework.sysfeat.com/pages/31cf36be6ad16caa.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.31cf36be6ad16caa where -- ========== Period

open import Agda.Primitive
open import SysFEAT.UpperOntology.3aca52346aa6418d public -- AbstractEntity
open import SysFEAT.SOF.31cf367c6ad16c33 public -- PeriodType

Period : PeriodType
Period = AbstractEntity

--  Period is subTypeOf AbstractEntity
st-31cf36be6ad16caa-3aca52346aa6418d : Period ⊏ₑ AbstractEntity
st-31cf36be6ad16caa-3aca52346aa6418d = polySubTypeOf-identity

postulate -- Period is PowerInstanceOf Period Type
  pi-31cf3c7a6ad17201 : Period ∷ₚₑ PeriodType

-- == Relations =======================
