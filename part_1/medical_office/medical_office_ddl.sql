CREATE TABLE medical_center (
    medical_center_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(255)
);

CREATE TABLE doctor (
    doctor_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialty VARCHAR(100),
    medical_center_id INTEGER REFERENCES medical_center(medical_center_id)
);

CREATE TABLE patient (
    patient_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    dob DATE,
    contact_info VARCHAR(255)
);

CREATE TABLE visit (
    visit_id SERIAL PRIMARY KEY,
    doctor_id INTEGER REFERENCES doctor(doctor_id),
    patient_id INTEGER REFERENCES patient(patient_id),
    visit_date DATE NOT NULL,
    notes TEXT
);

CREATE TABLE disease (
    disease_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

CREATE TABLE visit_disease (
    visit_id INTEGER REFERENCES visit(visit_id),
    disease_id INTEGER REFERENCES disease(disease_id),
    PRIMARY KEY (visit_id, disease_id)
);
