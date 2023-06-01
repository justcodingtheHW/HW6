CREATE TABLE Caregivers (
    Username varchar(255),
    Salt BINARY(16),
    Hash BINARY(16),
    PRIMARY KEY (Username)
);

CREATE TABLE Availabilities (
    Time date,
    Username varchar(255) REFERENCES Caregivers,
    PRIMARY KEY (Time, Username)
);

CREATE TABLE Vaccines (
    Name varchar(255),
    Doses int,
    PRIMARY KEY (Name)
);

CREATE TABLE Patients (
    Username varchar (255), 
    Salt BINARY(16), 
    Hash BINARY(16), 
    PRIMARY KEY (Username)
);

CREATE TABLE Appointments (
    Appointment_id varchar(10), 
    Patient_username varchar(255) REFERENCES Patients, 
    Caregiver_username varchar(255) REFERENCES Caregivers, 
    Vaccine_name varchar(255) REFERENCES Vaccines, 
    Time date, 
    PRIMARY KEY (Appointment_id)
);