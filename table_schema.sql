-- ETL table schema

--Opioid Table
CREATE TABLE opioids (
    drug_id INT PRIMARY KEY,
    drug_name VARCHAR(30),
    generic_name VARCHAR (30)
);

-- State Table
CREATE TABLE states (
    state_id INT PRIMARY KEY,
    state_abbv VARCHAR(30),
    state_name VARCHAR(30),
    state_pop INT
);

-- Overdoses Table
CREATE TABLE overdoses (
    state_id INT,
    year INT,
    deaths INT,
    FOREIGN KEY (state_id) REFERENCES states(state_id)
);

-- Doctor Table
CREATE TABLE prescribers (
    doctor_id INT PRIMARY KEY,
    doctor_type VARCHAR (60),
    state_id INT,
    gender VARCHAR (1),
    FOREIGN KEY (state_id) REFERENCES states(state_id)
);

-- Prescriptions Table
CREATE TABLE prescriptions (
    doctor_id INT,
    ACETAMINOPHEN_CODEINE INT,
    DIPHENOXYLATE_ATROPINE INT,
    FENTANYL INT,
    HYDROCODONE_ACETAMINOPHEN INT,
    HYDROMORPHONE_HCL INT,
    METHADONE_HCL INT,
    MORPHINE_SULFATE INT,
    MORPHINE_SULFATE_ER INT,
    OXYCODONE_ACETAMINOPHEN INT,
    OXYCODONE_HCL INT,
    OXYCONTIN INT,
    TRAMADOL_HCL INT,
    Total_Opioid_Prescriptions INT,
    Opioid_Prescriber VARCHAR (3),
    FOREIGN KEY (doctor_id) REFERENCES prescribers(doctor_id)
);
