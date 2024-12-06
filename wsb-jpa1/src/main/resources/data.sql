INSERT INTO doctor (doctor_number, email, first_name, last_name, specialization, telephone_number) VALUES
('DOC001', 'doctor1@example.com', 'John', 'Smith', 'Cardiology', '111-222-333'),
('DOC002', 'doctor2@example.com', 'Alice', 'Johnson', 'Neurology', '444-555-666'),
('DOC003', 'doctor3@example.com', 'Robert', 'Brown', 'Orthopedics', '777-888-999'),
('DOC004', 'doctor4@example.com', 'Emily', 'Davis', 'Dermatology', '000-111-222'),
('DOC005', 'doctor5@example.com', 'Michael', 'Miller', 'Pediatrics', '333-444-555'),
('DOC006', 'doctor6@example.com', 'Sarah', 'Wilson', 'Oncology', '666-777-888'),
('DOC007', 'doctor7@example.com', 'David', 'Moore', 'Radiology', '999-000-111'),
('DOC008', 'doctor8@example.com', 'Laura', 'Taylor', 'Gastroenterology', '222-333-444'),
('DOC009', 'doctor9@example.com', 'James', 'Anderson', 'Urology', '555-666-777'),
('DOC010', 'doctor10@example.com', 'Jessica', 'Thomas', 'Endocrinology', '888-999-000');

INSERT INTO patient (date_of_birth, email, first_name, last_name, patient_number, telephone_number) VALUES
('1980-01-01', 'patient1@example.com', 'Anna', 'Nowak', 'PAT001', '123-456-789'),
('1990-02-02', 'patient2@example.com', 'Jan', 'Kowalski', 'PAT002', '234-567-890'),
('2000-03-03', 'patient3@example.com', 'Ewa', 'Wiśniewska', 'PAT003', '345-678-901'),
('2010-04-04', 'patient4@example.com', 'Piotr', 'Wójcik', 'PAT004', '456-789-012'),
('1985-05-05', 'patient5@example.com', 'Katarzyna', 'Kowalczyk', 'PAT005', '567-890-123'),
('1995-06-06', 'patient6@example.com', 'Michał', 'Kamiński', 'PAT006', '678-901-234'),
('2005-07-07', 'patient7@example.com', 'Agnieszka', 'Lewandowska', 'PAT007', '789-012-345'),
('2015-08-08', 'patient8@example.com', 'Tomasz', 'Zieliński', 'PAT008', '890-123-456'),
('1988-09-09', 'patient9@example.com', 'Joanna', 'Szymańska', 'PAT009', '901-234-567'),
('1998-10-10', 'patient10@example.com', 'Paweł', 'Woźniak', 'PAT010', '012-345-678');

INSERT INTO address (address_line1, address_line2, city, postal_code, doctor_id, patient_id) VALUES
('Main St 1', 'Apt 1', 'Warsaw', '00-001', 1, NULL),
('Sunny St 2', 'Apt 2', 'Warsaw', '00-002', NULL, 1),
('Green St 3', 'Apt 3', 'Krakow', '30-001', 2, NULL),
('Field St 4', 'Apt 4', 'Krakow', '30-002', NULL, 2),
('Flower St 5', 'Apt 5', 'Gdansk', '80-001', 3, NULL),
('Forest St 6', 'Apt 6', 'Gdansk', '80-002', NULL, 3),
('Short St 7', 'Apt 7', 'Wroclaw', '50-001', 4, NULL);

INSERT INTO visit (description, time, doctor_id, patient_id) VALUES
('Initial consultation', '2024-11-01 09:00:00', 5, 6),
('Follow-up check', '2024-11-02 10:00:00', 6, 7),
('Orthopedic consultation', '2024-11-03 11:00:00', 7, 8),
('Dermatological examination', '2024-11-04 12:00:00', 8, 9);

INSERT INTO medical_treatment (description, type, visit_id) VALUES
('Administering medication', 'Prescription', 1),
('Recommending physical therapy', 'Therapy', 2),
('Performing X-ray', 'Diagnosis', 3),
('Recommending ointment use', 'Treatment', 4),
('Blood pressure check', 'Examination', 5),
('Recommending MRI', 'Examination', 6);