{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Supplier: 
A Supplier is a state of a Resource Agent Type, who acts as a party interacting with the enterprise in the context its operating eco-system (the Resource Operating Ecosystem).Example : Private Sector Customer, Regulation Authority, Public health Authority.

Documentation : https://framework.sysfeat.com/pages/08d17cde678a2b47.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.08d17cde678a2b47 where -- ========== Supplier

open import Agda.Primitive
open import SysFEAT.EA.bcebd31f5491302c public -- BusinessAgentType

Supplier : ClassOfClassOfBoundedIndividual
Supplier = ClassOfBoundedIndividual


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- State of Business Agent Type: -}
stateOfBusinessAgentType :  Linkage Supplier BusinessAgentType
stateOfBusinessAgentType = make_classOfMeronymy "State of Business Agent Type" "State of Business Agent Type"

