// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: FIA

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Autorzy misji","
<br/>
<font size='18'> Tu wpisz autorów misji </font>
<br/><br/>
"]];

// ====================================================================================

// NOTES: Misja
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Misja","
<br/>
Tu wpisz inf. dotyczące misji
<br/>
"]];

// ====================================================================================

// NOTES: Sytuacja
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Sytuacja","
<br/>
Tu wpisz Daną Sytuacje panującą na mapie
<br/><br/>
<font size='18'>Wrogie siły</font>
<br/>
Tu możesz podać inf. na temat Wrogich jednostek na mapie
<br/><br/>
<font size='18'>Sojusznicze Jednostki</font>
<br/>
Tu możesz podać inf. na temat Sojuszniczych jednostek na mapie
<br/>
"]];

// ====================================================================================
