{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Customer Journey Category: 
A Customer Journey Category classifies the journeys that comply with similar criteria.

Documentation : https://framework.sysfeat.com/pages/952e9d71672849ba.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.952e9d71672849ba where -- ========== CustomerJourneyCategory

open import Agda.Primitive
open import SysFEAT.SOF.f69620466a0f9c2f public -- AssetCategorizationSchema

CustomerJourneyCategory : MetaClass
CustomerJourneyCategory = MetaClass


--  CustomerJourneyCategory withAspect AssetCategorizationSchema
st-952e9d71672849ba-f69620466a0f9c2f : CustomerJourneyCategory ⊏ₐₑ AssetCategorizationSchema lzero
st-952e9d71672849ba-f69620466a0f9c2f = polySubTypeOf-identity


