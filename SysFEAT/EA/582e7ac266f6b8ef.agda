{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Quality Risk Type: 
A Data Quality Risk Type is a Data Risk Type is a 

Documentation : https://framework.sysfeat.com/pages/582e7ac266f6b8ef.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.582e7ac266f6b8ef where -- ========== DataQualityRiskType

open import Agda.Primitive
open import SysFEAT.SOF.582e785466f6b36f public -- DataRiskType

DataQualityRiskType : ThirdOrderClass
DataQualityRiskType = PropertyType


--  DataQualityRiskType is subTypeOf DataRiskType
st-582e7ac266f6b8ef-582e785466f6b36f : DataQualityRiskType ⊏ₑ DataRiskType
st-582e7ac266f6b8ef-582e785466f6b36f = polySubTypeOf-identity


-- == Relations =======================
