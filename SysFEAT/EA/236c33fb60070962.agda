{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Benefit: 


Documentation : https://framework.sysfeat.com/pages/236c33fb60070962.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.236c33fb60070962 where -- ========== Benefit

open import Agda.Primitive
open import SysFEAT.SOF.173706265fe3f332 public -- MeasurementInstrument
open import SysFEAT.EA.d1701e155be84834 public -- BenefitType
open import SysFEAT.EA.8a5c926e5c0d632c public -- CustomerActivity

Benefit : ClassOfBoundedIndividual
Benefit = BoundedIndividual


--  Benefit is subTypeOf MeasurementInstrument
st-236c33fb60070962-173706265fe3f332 : Benefit ⊏ₑ MeasurementInstrument
st-236c33fb60070962-173706265fe3f332 = polySubTypeOf-identity

postulate -- Benefit is PowerInstanceOf Benefit (Type)
  pi-38b33c1e6ae28750 : Benefit ∷ₚₑ BenefitType

-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Evaluated Touch Point: -}
evaluatedTouchPoint :  Linkage Benefit CustomerActivity
evaluatedTouchPoint = make_Relation "Evaluated Touch Point" "Evaluated Touch Point"

