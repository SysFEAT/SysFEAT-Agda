{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Privacy Block: 


Documentation : https://framework.sysfeat.com/pages/7d3786425fd04ea2.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7d3786425fd04ea2 where -- ========== PrivacyBlock

open import Agda.Primitive
open import SysFEAT.EA.622b7c7d6ae3438e public -- DataAssuranceInstrument

PrivacyBlock : ClassOfMixedOrderEntity
PrivacyBlock = MixedOrderEntity


--  PrivacyBlock withAspect DataAssuranceInstrument
st-7d3786425fd04ea2-622b7c7d6ae3438e : PrivacyBlock ⊏ₐₑ (DataAssuranceInstrument lzero)
st-7d3786425fd04ea2-622b7c7d6ae3438e = polySubTypeOf-identity


