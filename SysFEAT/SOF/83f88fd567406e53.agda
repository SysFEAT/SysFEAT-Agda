{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Asset Property Type: 
An Asset Property Type is a classification of Asset Propertys.

Documentation : https://framework.sysfeat.com/pages/83f88fd567406e53.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.83f88fd567406e53 where -- ========== AssetPropertyType

open import Agda.Primitive
open import SysFEAT.UpperOntology.87d3062666e33965 public -- PropertyType

AssetPropertyType : ThirdOrderClass
AssetPropertyType = PropertyType


--  AssetPropertyType is subTypeOf PropertyType
st-83f88fd567406e53-87d3062666e33965 : AssetPropertyType ⊏ₑ PropertyType
st-83f88fd567406e53-87d3062666e33965 = polySubTypeOf-identity


-- == Relations =======================
