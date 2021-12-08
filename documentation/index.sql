# INDEX statements
CREATE INDEX healthDataIndexCity
ON city (health_data_city);

CREATE INDEX healthDataIndexState
ON state (health_data_state);

CREATE INDEX healthDataIndexNation
ON nation (health_data_nation);

CREATE INDEX healthDataBMI
ON health_data (bmi);

CREATE INDEX familyHistoryInfo
ON family (family_history);

CREATE INDEX educationProgressInfo
ON education (progress);

CREATE INDEX marriageStatusInfo
ON demographics (marital_status);



