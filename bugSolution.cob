MOVE SPACES TO WS-OUTPUT-RECORD.

MOVE 'ABC' TO WS-INPUT-FIELD.

INSPECT WS-INPUT-FIELD REPLACING LEADING AND TRAILING SPACES BY SIZE.

IF WS-INPUT-FIELD = 'ABC' THEN
    MOVE 'Match' TO WS-OUTPUT-RECORD
ELSE
    MOVE 'No Match' TO WS-OUTPUT-RECORD
END-IF.

DISPLAY WS-OUTPUT-RECORD.