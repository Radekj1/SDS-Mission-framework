params ["_joiner","_side"];
private ["_lead"];

switch (_side) do {
  case west: {
    switch (true) do {
      case (!(isNil "UnitNATO_CO") && {!(isNull UnitNATO_CO) && {alive UnitNATO_CO} && {_joiner != UnitNATO_CO}}): {_lead = UnitNATO_CO};
      case (!(isNil "UnitNATO_DC") && {!(isNull UnitNATO_DC) && {alive UnitNATO_DC} && {_joiner != UnitNATO_DC}}): {_lead = UnitNATO_DC};
      case (!(isNil "UnitNATO_ASL_SL") && {!(isNull UnitNATO_ASL_SL) && {alive UnitNATO_ASL_SL} && {_joiner != UnitNATO_ASL_SL}}): {_lead = UnitNATO_ASL_SL};
      case (!(isNil "UnitNATO_A1_FTL") && {!(isNull UnitNATO_A1_FTL) && {alive UnitNATO_A1_FTL} && {_joiner != UnitNATO_A1_FTL}}): {_lead = UnitNATO_A1_FTL};
      case (!(isNil "UnitNATO_A2_FTL") && {!(isNull UnitNATO_A2_FTL) && {alive UnitNATO_A2_FTL} && {_joiner != UnitNATO_A2_FTL}}): {_lead = UnitNATO_A2_FTL};
      case (!(isNil "UnitNATO_BSL_SL") && {!(isNull UnitNATO_BSL_SL) && {alive UnitNATO_BSL_SL} && {_joiner != UnitNATO_BSL_SL}}): {_lead = UnitNATO_BSL_SL};
      case (!(isNil "UnitNATO_B1_FTL") && {!(isNull UnitNATO_B1_FTL) && {alive UnitNATO_B1_FTL} && {_joiner != UnitNATO_B1_FTL}}): {_lead = UnitNATO_B1_FTL};
      case (!(isNil "UnitNATO_B2_FTL") && {!(isNull UnitNATO_B2_FTL) && {alive UnitNATO_B2_FTL} && {_joiner != UnitNATO_B2_FTL}}): {_lead = UnitNATO_B2_FTL};
      case (!(isNil "UnitNATO_CSL_SL") && {!(isNull UnitNATO_CSL_SL) && {alive UnitNATO_CSL_SL} && {_joiner != UnitNATO_CSL_SL}}): {_lead = UnitNATO_CSL_SL};
      case (!(isNil "UnitNATO_C1_FTL") && {!(isNull UnitNATO_C1_FTL) && {alive UnitNATO_C1_FTL} && {_joiner != UnitNATO_C1_FTL}}): {_lead = UnitNATO_C1_FTL};
      case (!(isNil "UnitNATO_C2_FTL") && {!(isNull UnitNATO_C2_FTL) && {alive UnitNATO_C2_FTL} && {_joiner != UnitNATO_C2_FTL}}): {_lead = UnitNATO_C2_FTL};
      case (!(isNil "UnitNATO_DSL_SL") && {!(isNull UnitNATO_DSL_SL) && {alive UnitNATO_DSL_SL} && {_joiner != UnitNATO_DSL_SL}}): {_lead = UnitNATO_DSL_SL};
      case (!(isNil "UnitNATO_ESL_SL") && {!(isNull UnitNATO_ESL_SL) && {alive UnitNATO_ESL_SL} && {_joiner != UnitNATO_ESL_SL}}): {_lead = UnitNATO_ESL_SL};
      case (!(isNil "UnitNATO_FSL_SL") && {!(isNull UnitNATO_FSL_SL) && {alive UnitNATO_FSL_SL} && {_joiner != UnitNATO_FSL_SL}}): {_lead = UnitNATO_FSL_SL};
      default {_lead = false;};
    };
  };
  case east: {
    switch (true) do {
      case (!(isNil "UnitCSAT_CO") && {!(isNull UnitCSAT_CO) && {alive UnitCSAT_CO} && {_joiner != UnitCSAT_CO}}): {_lead = UnitCSAT_CO};
      case (!(isNil "UnitCSAT_DC") && {!(isNull UnitCSAT_DC) && {alive UnitCSAT_DC} && {_joiner != UnitCSAT_DC}}): {_lead = UnitCSAT_DC};
      case (!(isNil "UnitCSAT_ASL_SL") && {!(isNull UnitCSAT_ASL_SL) && {alive UnitCSAT_ASL_SL} && {_joiner != UnitCSAT_ASL_SL}}): {_lead = UnitCSAT_ASL_SL};
      case (!(isNil "UnitCSAT_A1_FTL") && {!(isNull UnitCSAT_A1_FTL) && {alive UnitCSAT_A1_FTL} && {_joiner != UnitCSAT_A1_FTL}}): {_lead = UnitCSAT_A1_FTL};
      case (!(isNil "UnitCSAT_A2_FTL") && {!(isNull UnitCSAT_A2_FTL) && {alive UnitCSAT_A2_FTL} && {_joiner != UnitCSAT_A2_FTL}}): {_lead = UnitCSAT_A2_FTL};
      case (!(isNil "UnitCSAT_BSL_SL") && {!(isNull UnitCSAT_BSL_SL) && {alive UnitCSAT_BSL_SL} && {_joiner != UnitCSAT_BSL_SL}}): {_lead = UnitCSAT_BSL_SL};
      case (!(isNil "UnitCSAT_B1_FTL") && {!(isNull UnitCSAT_B1_FTL) && {alive UnitCSAT_B1_FTL} && {_joiner != UnitCSAT_B1_FTL}}): {_lead = UnitCSAT_B1_FTL};
      case (!(isNil "UnitCSAT_B2_FTL") && {!(isNull UnitCSAT_B2_FTL) && {alive UnitCSAT_B2_FTL} && {_joiner != UnitCSAT_B2_FTL}}): {_lead = UnitCSAT_B2_FTL};
      case (!(isNil "UnitCSAT_CSL_SL") && {!(isNull UnitCSAT_CSL_SL) && {alive UnitCSAT_CSL_SL} && {_joiner != UnitCSAT_CSL_SL}}): {_lead = UnitCSAT_CSL_SL};
      case (!(isNil "UnitCSAT_C1_FTL") && {!(isNull UnitCSAT_C1_FTL) && {alive UnitCSAT_C1_FTL} && {_joiner != UnitCSAT_C1_FTL}}): {_lead = UnitCSAT_C1_FTL};
      case (!(isNil "UnitCSAT_C2_FTL") && {!(isNull UnitCSAT_C2_FTL) && {alive UnitCSAT_C2_FTL} && {_joiner != UnitCSAT_C2_FTL}}): {_lead = UnitCSAT_C2_FTL};
      case (!(isNil "UnitCSAT_DSL_SL") && {!(isNull UnitCSAT_DSL_SL) && {alive UnitCSAT_DSL_SL} && {_joiner != UnitCSAT_DSL_SL}}): {_lead = UnitCSAT_DSL_SL};
      case (!(isNil "UnitCSAT_ESL_SL") && {!(isNull UnitCSAT_ESL_SL) && {alive UnitCSAT_ESL_SL} && {_joiner != UnitCSAT_ESL_SL}}): {_lead = UnitCSAT_ESL_SL};
      case (!(isNil "UnitCSAT_FSL_SL") && {!(isNull UnitCSAT_FSL_SL) && {alive UnitCSAT_FSL_SL} && {_joiner != UnitCSAT_FSL_SL}}): {_lead = UnitCSAT_FSL_SL};
      default {_lead = false;};
    };
  };
  case resistance: {
    switch (true) do {
      case (!(isNil "UnitAAF_CO") && {!(isNull UnitAAF_CO) && {alive UnitAAF_CO} && {_joiner != UnitAAF_CO}}): {_lead = UnitAAF_CO};
      case (!(isNil "UnitAAF_DC") && {!(isNull UnitAAF_DC) && {alive UnitAAF_DC} && {_joiner != UnitAAF_DC}}): {_lead = UnitAAF_DC};
      case (!(isNil "UnitAAF_ASL_SL") && {!(isNull UnitAAF_ASL_SL) && {alive UnitAAF_ASL_SL} && {_joiner != UnitAAF_ASL_SL}}): {_lead = UnitAAF_ASL_SL};
      case (!(isNil "UnitAAF_A1_FTL") && {!(isNull UnitAAF_A1_FTL) && {alive UnitAAF_A1_FTL} && {_joiner != UnitAAF_A1_FTL}}): {_lead = UnitAAF_A1_FTL};
      case (!(isNil "UnitAAF_A2_FTL") && {!(isNull UnitAAF_A2_FTL) && {alive UnitAAF_A2_FTL} && {_joiner != UnitAAF_A2_FTL}}): {_lead = UnitAAF_A2_FTL};
      case (!(isNil "UnitAAF_BSL_SL") && {!(isNull UnitAAF_BSL_SL) && {alive UnitAAF_BSL_SL} && {_joiner != UnitAAF_BSL_SL}}): {_lead = UnitAAF_BSL_SL};
      case (!(isNil "UnitAAF_B1_FTL") && {!(isNull UnitAAF_B1_FTL) && {alive UnitAAF_B1_FTL} && {_joiner != UnitAAF_B1_FTL}}): {_lead = UnitAAF_B1_FTL};
      case (!(isNil "UnitAAF_B2_FTL") && {!(isNull UnitAAF_B2_FTL) && {alive UnitAAF_B2_FTL} && {_joiner != UnitAAF_B2_FTL}}): {_lead = UnitAAF_B2_FTL};
      case (!(isNil "UnitAAF_CSL_SL") && {!(isNull UnitAAF_CSL_SL) && {alive UnitAAF_CSL_SL} && {_joiner != UnitAAF_CSL_SL}}): {_lead = UnitAAF_CSL_SL};
      case (!(isNil "UnitAAF_C1_FTL") && {!(isNull UnitAAF_C1_FTL) && {alive UnitAAF_C1_FTL} && {_joiner != UnitAAF_C1_FTL}}): {_lead = UnitAAF_C1_FTL};
      case (!(isNil "UnitAAF_C2_FTL") && {!(isNull UnitAAF_C2_FTL) && {alive UnitAAF_C2_FTL} && {_joiner != UnitAAF_C2_FTL}}): {_lead = UnitAAF_C2_FTL};
      case (!(isNil "UnitAAF_DSL_SL") && {!(isNull UnitAAF_DSL_SL) && {alive UnitAAF_DSL_SL} && {_joiner != UnitAAF_DSL_SL}}): {_lead = UnitAAF_DSL_SL};
      case (!(isNil "UnitAAF_ESL_SL") && {!(isNull UnitAAF_ESL_SL) && {alive UnitAAF_ESL_SL} && {_joiner != UnitAAF_ESL_SL}}): {_lead = UnitAAF_ESL_SL};
      case (!(isNil "UnitAAF_FSL_SL") && {!(isNull UnitAAF_FSL_SL) && {alive UnitAAF_FSL_SL} && {_joiner != UnitAAF_FSL_SL}}): {_lead = UnitAAF_FSL_SL};
      default {_lead = false;};
    };
  };
};

if (isNil "_lead") then {_lead = false};

_lead