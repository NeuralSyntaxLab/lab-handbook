% dosage calculation 
% created by Ido Ben Shitrit
% Note, this code calculates requierd dosages of drugs for birds weights
% between 10 to 30 grams(increments of 1 gram)

% Note, change the following accotrding to your desired calculations
% required_dosage_MgKg
% Dilution_Factor
% substance_concentration_MgMl

%% change according to your needs
required_dosage_MgKg=75; %(mg/kg)
birds_weight=10:30;
Dilution_Factor=1/10;
substance_concentration_MgMl=100;
%% dosage calculation
required_dosage_MgG=required_dosage_MgKg/1000;

Dose =required_dosage_MgG.*birds_weight;

%%dilution calculation 

diluted_solution_MgMl=substance_concentration_MgMl*Dilution_Factor;

Amount_to_inject=Dose./diluted_solution_MgMl;

final_results = [birds_weight ; Amount_to_inject]'