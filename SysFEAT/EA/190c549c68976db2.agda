{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Policy: 
A Business Policy is a Policy that is not directly enforceable whose purpose is to govern or guide the enterprise.

Documentation : https://framework.sysfeat.com/pages/190c549c68976db2.htm

External references:
  OMG - BMM - Business Policy: https://www.omg.org/spec/BMM/1.3/PDF#page=45
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.190c549c68976db2 where -- ========== BusinessPolicy

open import Agda.Primitive
open import SysFEAT.EA.4b945e8668a47f80 public -- PolicyFrameworkAsset
open import SysFEAT.SOF.190c7429689664b5 public -- Policy
open import SysFEAT.EA.952ead2b67285cfd public -- BusinessPolicyCategory

BusinessPolicy : ClassOfMixedOrderEntity
BusinessPolicy = MixedOrderEntity


--  BusinessPolicy withAspect PolicyFrameworkAsset
st-190c549c68976db2-4b945e8668a47f80 : BusinessPolicy ⊏ₐₑ (PolicyFrameworkAsset (lsuc(lzero)))
st-190c549c68976db2-4b945e8668a47f80 = polySubTypeOf-identity

--  BusinessPolicy is subTypeOf Policy
st-190c549c68976db2-190c7429689664b5 : BusinessPolicy ⊏ₑ Policy
st-190c549c68976db2-190c7429689664b5 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Business Policy Category: -}
businessPolicyCategory :  Linkage BusinessPolicy BusinessPolicyCategory
businessPolicyCategory = make_classOfRelation "Business Policy Category" "Business Policy Category"

