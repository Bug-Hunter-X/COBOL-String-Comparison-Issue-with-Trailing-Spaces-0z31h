# COBOL String Comparison Bug

This repository demonstrates a subtle bug in COBOL string comparisons related to trailing spaces.  The program attempts to compare a string variable with a literal, but the comparison may fail unexpectedly if the variable contains trailing spaces.

## Bug Description

The `IF` statement compares `WS-INPUT-FIELD` to the literal string 'ABC'.  If `WS-INPUT-FIELD` contains trailing spaces, the comparison will evaluate to false, even if the leading characters match.  This is because COBOL's string comparison is sensitive to trailing spaces by default. 

## Solution

The solution involves using the `INSPECT` verb to remove trailing spaces before the comparison to ensure the strings are properly compared.  Alternatively, specify a more strict comparison that's not affected by trailing spaces.  See `bugSolution.cob` for details.
