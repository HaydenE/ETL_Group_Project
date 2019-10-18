-- ETL table schema

--Opioid Table
CREATE TABLE opioids (
    drug_id INT PRIMARY KEY
    drug_name VARCHAR(30)
    generic_name VARCHAR (30)
);

-- Overdoses Table
CREATE TABLE overdoses (
    state_id INT
    deaths INT
    FOREIGN KEY (state_id) REFERENCES states(state_id)
);

-- State Table
CREATE TABLE states (
    state_id INT PRIMARY KEY
    state_abbv VARCHAR(30)
    state_name VARCHAR(30)
    state_pop INT
)

-- Doctor Table
CREATE TABLE prescribers (
    doctor_id INT PRIMARY KEY
    doctor_type VARCHAR (30)
    drug_id INT
    state_id INT
    gender VARCHAR (1)
    FOREIGN KEY (state_id) REFERENCES states(state_id)
    FOEIGN KEY (drug_id) REFERENCES opiods(drug_id)
)
