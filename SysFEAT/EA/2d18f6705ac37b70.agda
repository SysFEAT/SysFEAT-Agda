{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Projet Risk Type: 


Documentation : https://framework.sysfeat.com/pages/2d18f6705ac37b70.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.2d18f6705ac37b70 where -- ========== ProjetRiskType

open import Agda.Primitive
open import SysFEAT.EA.52e0b14c6abf4c76 public -- ProgramAsset
open import SysFEAT.SOF.0eb97aff6855cd23 public -- ModelCategorizationBlock

ProjetRiskType : ClassOfMixedOrderEntity
ProjetRiskType = MixedOrderEntity


--  ProjetRiskType withAspect ProgramAsset
st-2d18f6705ac37b70-52e0b14c6abf4c76 : ProjetRiskType ⊏ₐₑ (ProgramAsset (lsuc(lzero)))
st-2d18f6705ac37b70-52e0b14c6abf4c76 = polySubTypeOf-identity

--  ProjetRiskType withAspect ModelCategorizationBlock
st-2d18f6705ac37b70-0eb97aff6855cd23 : ProjetRiskType ⊏ₐₑ (ModelCategorizationBlock (lsuc(lzero)))
st-2d18f6705ac37b70-0eb97aff6855cd23 = polySubTypeOf-identity


