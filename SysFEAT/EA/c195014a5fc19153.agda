{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Processing Category: 


Documentation : https://framework.sysfeat.com/pages/c195014a5fc19153.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c195014a5fc19153 where -- ========== DataProcessingCategory

open import Agda.Primitive
open import SysFEAT.SOF.0eb97aff6855cd23 public -- ModelCategorizationBlock

DataProcessingCategory : ClassOfMixedOrderEntity
DataProcessingCategory = MixedOrderEntity


--  DataProcessingCategory withAspect ModelCategorizationBlock
st-c195014a5fc19153-0eb97aff6855cd23 : DataProcessingCategory ⊏ₐₑ (ModelCategorizationBlock (lsuc(lzero)))
st-c195014a5fc19153-0eb97aff6855cd23 = polySubTypeOf-identity


