{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Processor: 
A Data Processor is the collection and manipulation of items of data to produce meaningful information.In this sense it can be considered a subset of information processing, the change (processing) of information in any manner detectable by an observer.

Documentation : https://framework.sysfeat.com/pages/72fe99b65e985953.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.72fe99b65e985953 where -- ========== DataProcessor

open import Agda.Primitive
open import SysFEAT.EA.622b7c7d6ae3438e public -- DataAssuranceInstrument
open import SysFEAT.EA.c195014a5fc19153 public -- DataProcessingCategory

DataProcessor : ClassOfMixedOrderEntity
DataProcessor = MixedOrderEntity


--  DataProcessor withAspect DataAssuranceInstrument
st-72fe99b65e985953-622b7c7d6ae3438e : DataProcessor ⊏ₐₑ (DataAssuranceInstrument (lsuc(lzero)))
st-72fe99b65e985953-622b7c7d6ae3438e = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Data Processing Category: -}
dataProcessingCategory :  Linkage DataProcessor DataProcessingCategory
dataProcessingCategory = make_classOfHolonymy "Data Processing Category" "Data Processing Category"

