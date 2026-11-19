{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Regulation section: 
A Regulation section is a classification of Regulation Articles.Regulation sections can be themselves organized as a classification hierarchy.

Documentation : https://framework.sysfeat.com/pages/952eb284672864df.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOPAS.952eb284672864df where -- ========== Regulationsection

open import Agda.Primitive
open import SysFEAT.SOPAS.4b947d2068a49dbb public -- RegulatoryAsset
open import SysFEAT.SOF.7e3474f06af36c2f public -- PolicyCategoryType

Regulationsection : ClassOfMixedOrderEntity
Regulationsection = MixedOrderEntity


--  Regulationsection withAspect RegulatoryAsset
st-952eb284672864df-4b947d2068a49dbb : Regulationsection ⊏ₐₑ RegulatoryAsset (lsuc(lsuc( lzero)))
st-952eb284672864df-4b947d2068a49dbb = polySubTypeOf-identity

--  Regulationsection withAspect PolicyCategoryType
st-952eb284672864df-7e3474f06af36c2f : Regulationsection ⊏ₐₑ PolicyCategoryType lzero
st-952eb284672864df-7e3474f06af36c2f = polySubTypeOf-identity


