{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Pain point: 
A painpoint describes the difficulties encountered by a persona when carrying out a step in the client journey.

Documentation : https://framework.sysfeat.com/pages/236c347260070a8c.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.236c347260070a8c where -- ========== Painpoint

open import Agda.Primitive
open import SysFEAT.SOF.173706265fe3f332 public -- MeasurementInstrument
open import SysFEAT.EA.d170d9925be73b35 public -- PainPointType
open import SysFEAT.EA.8a5c926e5c0d632c public -- CustomerActivity

Painpoint : ClassOfBoundedIndividual
Painpoint = BoundedIndividual


--  Painpoint is subTypeOf MeasurementInstrument
st-236c347260070a8c-173706265fe3f332 : Painpoint ⊏ₑ MeasurementInstrument
st-236c347260070a8c-173706265fe3f332 = polySubTypeOf-identity

postulate -- Painpoint is PowerInstanceOf Pain Point (Type)
  pi-38b33c416ae2878b : Painpoint ∷ₚₑ PainPointType

-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Evaluated Touch Point: -}
evaluatedTouchPoint :  Linkage Painpoint CustomerActivity
evaluatedTouchPoint = make_Relation "Evaluated Touch Point" "Evaluated Touch Point"

