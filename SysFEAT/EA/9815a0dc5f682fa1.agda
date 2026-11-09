{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Control: 
A Data Control is about tracking the quality of information as defined by Data Quality Policy(ies).

Documentation : https://framework.sysfeat.com/pages/9815a0dc5f682fa1.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.9815a0dc5f682fa1 where -- ========== DataControl

open import Agda.Primitive
open import SysFEAT.EA.622b7c7d6ae3438e public -- DataAssuranceInstrument
open import SysFEAT.EA.98159f6b5f682d1e public -- DataQualityPolicy
open import SysFEAT.EA.72fe99d65e98598e public -- DataQualityMeasure

DataControl : ClassOfMixedOrderEntity
DataControl = MixedOrderEntity


--  DataControl withAspect DataAssuranceInstrument
st-9815a0dc5f682fa1-622b7c7d6ae3438e : DataControl ⊏ₐₑ (DataAssuranceInstrument (lsuc(lzero)))
st-9815a0dc5f682fa1-622b7c7d6ae3438e = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Controled Data Policy: -}
controledDataPolicy :  Linkage DataControl DataQualityPolicy
controledDataPolicy = make_classOfHolonymy "Controled Data Policy" "Controled Data Policy"


-- -------------------------------------------------------------------------------------------- 
{- Implemented Measure: -}
implementedMeasure :  Linkage DataControl DataQualityMeasure
implementedMeasure = make_classOfHolonymy "Implemented Measure" "Implemented Measure"

