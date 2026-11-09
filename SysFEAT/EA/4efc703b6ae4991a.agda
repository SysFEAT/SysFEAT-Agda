{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Customer Segment: 
A Customer Segment is a category of Customers that are related from a marketing or demographic perspective. For example, a business that practices customer segmentation might group its current or potential customers according to their gender, buying tendencies, age group, and special interests.

Documentation : https://framework.sysfeat.com/pages/4efc703b6ae4991a.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.4efc703b6ae4991a where -- ========== CustomerSegment

open import Agda.Primitive
open import SysFEAT.SOF.4efc6b346ae48db7 public -- AssetCategory

CustomerSegment : ∀ (u : Level) → ClassOfMixedOrderEntity u 
CustomerSegment u  = MixedOrderEntity u 


--  CustomerSegment is subTypeOf AssetCategory
st-4efc703b6ae4991a-4efc6b346ae48db7 : ∀ {u v} → (CustomerSegment u) ⊏⋆ₑ (AssetCategory v)
st-4efc703b6ae4991a-4efc6b346ae48db7 = trivialPolySubTypeOfEntity


