{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Supplier: 
A Supplier is a Supplier that supplies goods and services to the enterprise. This entity is part of the supply chain of a business which may provide the bulk of the value contained within its products. Some suppliers may even engage in drop shipping, where they ship goods directly to the customers of the buyer..

Documentation : https://framework.sysfeat.com/pages/08d180d4678a2c8f.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.08d180d4678a2c8f where -- ========== Supplier

open import Agda.Primitive
open import SysFEAT.C-SOF.08d17cde678a2b47 public -- Supplier
open import SysFEAT.EA.bcebd31f5491302c public -- BusinessAgentType

Supplier : ClassOfClassOfBoundedIndividual
Supplier = ClassOfBoundedIndividual

--  Supplier is subTypeOf Supplier
st-08d180d4678a2c8f-08d17cde678a2b47 : Supplier ⊏ₑ Supplier
st-08d180d4678a2c8f-08d17cde678a2b47 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- State of Business Agent Type: -}
stateOfBusinessAgentType :  Linkage Supplier BusinessAgentType
stateOfBusinessAgentType = make_classOfMeronymy "State of Business Agent Type" "State of Business Agent Type"

