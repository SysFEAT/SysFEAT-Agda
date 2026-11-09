{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Processing Activity: 
Any operation or set of operations performed upon personal data, whether or not by automatic means, such as collection, recording, organization, storage, adaptation or alteration, retrieval, consultation, use, disclosure by transmission, dissemination or otherwise making available, alignment or combination, blocking, erasure or destruction.

Documentation : https://framework.sysfeat.com/pages/16e319be5bf83cb9.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.16e319be5bf83cb9 where -- ========== ProcessingActivity

open import Agda.Primitive
open import SysFEAT.EA.426a57325aeb3d76 public -- PrivacyProcessing
open import SysFEAT.EA.258c68065fd254de public -- TransferSafeGuard
open import SysFEAT.EA.57dfc52d550932ef public -- BusinessProcess
open import SysFEAT.EA.bcebd8e9549144db public -- Application

ProcessingActivity : ClassOfClassOfIndividual
ProcessingActivity = ClassOfIndividual


--  ProcessingActivity is subTypeOf PrivacyProcessing
st-16e319be5bf83cb9-426a57325aeb3d76 : ProcessingActivity ⊏ₑ PrivacyProcessing
st-16e319be5bf83cb9-426a57325aeb3d76 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Transfer Safe Guard: -}
-- Aggregate Member : Transfer Safe Guard
TransferSafeGuard : ClassOfClassOfIndividual
TransferSafeGuard = ClassOfIndividual


-- Membership relation
1B0468F869F8558C :  Linkage ProcessingActivity TransferSafeGuard
1B0468F869F8558C = make_upwardNestingRelation "transferSafeGuard membership" "nested transferSafeGuard"

-- Aggregation relation
aggregationOfTransferSafeGuardTransferSafeGuard :  Linkage TransferSafeGuard TransferSafeGuard
aggregationOfTransferSafeGuardTransferSafeGuard = make_Relation "TransferSafeGuard aggregation" "aggregated TransferSafeGuard"

{- transferSafeGuard : derived relation obtained by composing
   1B0468F869F8558C and aggregationOfTransferSafeGuardTransferSafeGuard
   It directly links an Processing Activity to the final aggregated TransferSafeGuard
   hiding the reifying TransferSafeGuard
-}
transferSafeGuard : Linkage ProcessingActivity TransferSafeGuard
transferSafeGuard = 1B0468F869F8558C  ∘  aggregationOfTransferSafeGuardTransferSafeGuard



-- -------------------------------------------------------------------------------------------- 
{- Business Process: 
Any  human activity which, for a given purpose of the enterprise, manipulates personal data, including collection, use, recording, etc.
-}
-- Aggregate Member : Business Process
BusinessProcess : ClassOfClassOfIndividual
BusinessProcess = ClassOfIndividual


-- Membership relation
membershipOfBusinessProcess :  Linkage ProcessingActivity BusinessProcess
membershipOfBusinessProcess = make_upwardNestingRelation "businessProcess membership" "nested businessProcess"

-- Aggregation relation
aggregationOfBusinessProcessBusinessProcess :  Linkage BusinessProcess BusinessProcess
aggregationOfBusinessProcessBusinessProcess = make_Relation "BusinessProcess aggregation" "aggregated BusinessProcess"

{- businessProcess : derived relation obtained by composing
   membershipOfBusinessProcess and aggregationOfBusinessProcessBusinessProcess
   It directly links an Processing Activity to the final aggregated BusinessProcess
   hiding the reifying BusinessProcess
-}
businessProcess : Linkage ProcessingActivity BusinessProcess
businessProcess = membershipOfBusinessProcess  ∘  aggregationOfBusinessProcessBusinessProcess



-- -------------------------------------------------------------------------------------------- 
{- Application: 
Any  IT activity which, for a given purpose of the enterprise, manipulates personal data, including collection, use, recording, etc.
-}
-- Aggregate Member : Application
Application : ClassOfClassOfIndividual
Application = ClassOfIndividual


-- Membership relation
membershipOfApplication :  Linkage ProcessingActivity Application
membershipOfApplication = make_upwardNestingRelation "application membership" "nested application"

-- Aggregation relation
aggregationOfApplicationApplication :  Linkage Application Application
aggregationOfApplicationApplication = make_Relation "Application aggregation" "aggregated Application"

{- application : derived relation obtained by composing
   membershipOfApplication and aggregationOfApplicationApplication
   It directly links an Processing Activity to the final aggregated Application
   hiding the reifying Application
-}
application : Linkage ProcessingActivity Application
application = membershipOfApplication  ∘  aggregationOfApplicationApplication


