{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Hardware Technology Capability: 
A Hardware Technology Capability is a Technology Capability offered by Hardware Technologys and aimed at producing Technology Outcome Events.Hardware Technology Capabilitys define WHAT Hardware Technologys can do, They are used to understand whether two types of Hardware Technology are fundamentally doing the same thing.They are also used in Hardware System ArcOps to identify where there are redundancies in Technology Portfolios.Exemples: - Nuclear Magnetic Resonance (NMR) spectroscopy.- Powertrain, Power Transmission.- Motion Control.

Documentation : https://framework.sysfeat.com/pages/dd27e66a68a14099.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.H-SOF.dd27e66a68a14099 where -- ========== HardwareTechnologyCapability

open import Agda.Primitive
open import SysFEAT.R-SOF.dd27b08d68a10b12 public -- TechnologyCapability

HardwareTechnologyCapability : AssetPropertyType
HardwareTechnologyCapability = AssetProperty


--  HardwareTechnologyCapability is subTypeOf TechnologyCapability
st-dd27e66a68a14099-dd27b08d68a10b12 : HardwareTechnologyCapability ⊏ₑ TechnologyCapability
st-dd27e66a68a14099-dd27b08d68a10b12 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Hardware Capability Part: -}
-- Aggregate Member : Hardware Capability Part
HardwareCapabilityPart : AbstractEntityMetaClass
HardwareCapabilityPart = ClassOfAbstractEntity



--  HardwareCapabilityPart is subTypeOf TechnologyCapabilityPart
st-dd27e7c268a142d6-dd27b26868a10dbe : HardwareCapabilityPart ⊏⋆ₑ TechnologyCapabilityPart
st-dd27e7c268a142d6-dd27b26868a10dbe = polySubTypeOf-identity

-- Membership relation
membershipOfHardwareCapabilityPart :  Linkage HardwareTechnologyCapability HardwareCapabilityPart
membershipOfHardwareCapabilityPart = make_upwardNestingRelation "hardwareCapabilityPart membership" "nested hardwareCapabilityPart"

-- Aggregation relation
aggregationOfHardwareTechnologyCapabilityHardwareCapabilityPart :  Linkage HardwareCapabilityPart HardwareTechnologyCapability
aggregationOfHardwareTechnologyCapabilityHardwareCapabilityPart = make_Relation "HardwareTechnologyCapability aggregation" "aggregated HardwareTechnologyCapability"

{- hardwareCapabilityPart : derived relation obtained by composing
   membershipOfHardwareCapabilityPart and aggregationOfHardwareTechnologyCapabilityHardwareCapabilityPart
   It directly links an Hardware Technology Capability to the final aggregated HardwareTechnologyCapability
   hiding the reifying HardwareCapabilityPart
-}
hardwareCapabilityPart : Linkage HardwareTechnologyCapability HardwareTechnologyCapability
hardwareCapabilityPart = membershipOfHardwareCapabilityPart  ∘  aggregationOfHardwareTechnologyCapabilityHardwareCapabilityPart


