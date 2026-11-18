{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Macro Operating Asset: 
A Macro Operating Asset is a category of  Operating Asset which corresponds to a large-scale enterprise assets. This level of analysis is concerned with understanding how large enterprise systems operate and how they interact with each other. Examples of macro-level systems:. Legal entities. The overall enterprise IT System. The internet. System of Systems . The Enterprise itself., 

Documentation : https://framework.sysfeat.com/pages/ded858a36ae39422.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.ded858a36ae39422 where -- ========== MacroOperatingAsset

open import Agda.Primitive
open import SysFEAT.SOF.d85fe7f86afa53a1 public -- SystemicLevel

MacroOperatingAsset : ∀ (u : Level) → AbstractionCategoryType u
MacroOperatingAsset u = AbstractionCategory u


--  MacroOperatingAsset is subTypeOf SystemicLevel
st-ded858a36ae39422-d85fe7f86afa53a1 : ∀ {u v} → MacroOperatingAsset u ⊏⋆ₑ SystemicLevel v
st-ded858a36ae39422-d85fe7f86afa53a1 = trivialPolySubTypeOfEntity


