{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Project Type: 
A category of project.

Documentation : https://framework.sysfeat.com/pages/24ac695354881cbe.htm

External references:
  OMG - UAF - Project: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#Project
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.24ac695354881cbe where -- ========== ProjectType

open import Agda.Primitive
open import SysFEAT.EA.52e0b14c6abf4c76 public -- ProgramAsset
open import SysFEAT.SOF.0eb97aff6855cd23 public -- ModelCategorizationBlock

ProjectType : ClassOfMixedOrderEntity
ProjectType = MixedOrderEntity


--  ProjectType withAspect ProgramAsset
st-24ac695354881cbe-52e0b14c6abf4c76 : ProjectType ⊏ₐₑ (ProgramAsset (lsuc(lzero)))
st-24ac695354881cbe-52e0b14c6abf4c76 = polySubTypeOf-identity

--  ProjectType withAspect ModelCategorizationBlock
st-24ac695354881cbe-0eb97aff6855cd23 : ProjectType ⊏ₐₑ (ModelCategorizationBlock (lsuc(lzero)))
st-24ac695354881cbe-0eb97aff6855cd23 = polySubTypeOf-identity


