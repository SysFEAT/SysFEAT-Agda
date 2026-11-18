{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Hardware Technology: 
A Hardware Technology is an elementary Technology System  used as an enabler by Concrete Hardware Systems (as Required Hardware Technology).Hardware Technologys fulfill Hardware Technology Capabilitys.Examples: - Oxford Anor Spectrographs (NMR).- Spectral Data Services (NMR).- Valeo Powertrain Systems.- Joyson Electronics Powertrain Systems.

Documentation : https://framework.sysfeat.com/pages/3b364dc363d9bda7.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.H-SOF.3b364dc363d9bda7 where -- ========== HardwareTechnology

open import Agda.Primitive
open import SysFEAT.R-SOF.0cbd1fa663fe18ac public -- TechnologySystem
open import SysFEAT.H-SOF.dd27e66a68a14099 public -- HardwareTechnologyCapability

HardwareTechnology : BoundedIndividualMetaClass
HardwareTechnology = ClassOfBoundedIndividual


--  HardwareTechnology is subTypeOf TechnologySystem
st-3b364dc363d9bda7-0cbd1fa663fe18ac : HardwareTechnology ⊏ₑ TechnologySystem
st-3b364dc363d9bda7-0cbd1fa663fe18ac = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Fulfilled Technology Capability: -}
fulfilledTechnologyCapability :  Linkage HardwareTechnology HardwareTechnologyCapability
fulfilledTechnologyCapability = make_subTypeOf "Fulfilled Technology Capability" "Fulfilled Technology Capability"

