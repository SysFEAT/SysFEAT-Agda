{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Asset Property: 
An Asset Property is a Property that qualifies Individual Assets and their Asset Types.Example:. Capabilities (as a functional property).. Environmental conditions.. Directives.

Documentation : https://framework.sysfeat.com/pages/515c6a856893324e.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.515c6a856893324e where -- ========== AssetProperty

open import Agda.Primitive
open import SysFEAT.UpperOntology.746ac18368905aa2 public -- Property
open import SysFEAT.SOF.83f88fd567406e53 public -- AssetPropertyType

AssetProperty : AssetPropertyType
AssetProperty = Property

--  AssetProperty is subTypeOf Property
st-515c6a856893324e-746ac18368905aa2 : AssetProperty ⊏ₑ Property
st-515c6a856893324e-746ac18368905aa2 = polySubTypeOf-identity

postulate -- AssetProperty is PowerInstanceOf Asset Property Type
  pi-f38232926aac8ad5 : AssetProperty ∷ₚₑ AssetPropertyType

-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Asset Property Type: -}
assetPropertyType :  Linkage AssetProperty AssetPropertyType
assetPropertyType = make_instanceOf "Asset Property Type" "Asset Property Type"

postulate -- assetPropertyType is subTypeOf propertyClassification
  st-190c1f03689649e5-1976247d68925c3e  : assetPropertyType    ⊏⋆ᵣ  propertyClassification  
