-- Drop the Tissue table if it exists
DROP TABLE IF EXISTS Tissue;

-- Create the Tissue table
CREATE TABLE Tissue (
    TissueID INTEGER PRIMARY KEY AUTOINCREMENT,
    Stage TEXT DEFAULT NULL, -- Replacing ENUM('Adult', 'Larval') with TEXT
    Sex TEXT DEFAULT NULL, -- Replacing ENUM('Male', 'Female', 'Both') with TEXT
    TissueName TEXT NOT NULL,
    Abbreviation TEXT NOT NULL,
    UniTissueID INTEGER NOT NULL,
    Reference TEXT NOT NULL, -- Replacing ENUM('Yes', 'No') with TEXT
    Replicates INTEGER NOT NULL DEFAULT 0,
    RNAseq TEXT DEFAULT NULL, -- Replacing ENUM('Ed', 'Py') with TEXT
    ProfileAL INTEGER NOT NULL, -- Replacing TINYINT(1) with INTEGER
    ProfileLO INTEGER NOT NULL,
    ProfileMA INTEGER NOT NULL,
    ProfileFA INTEGER NOT NULL,
    ProfileAT INTEGER NOT NULL,
    ProfileAO INTEGER NOT NULL
);

-- Insert data into the Tissue table
INSERT INTO Tissue (
    TissueID, Stage, Sex, TissueName, Abbreviation, UniTissueID,
    Reference, Replicates, RNAseq, ProfileAL, ProfileLO, ProfileMA,
    ProfileFA, ProfileAT, ProfileAO
)
VALUES
    (1, 'Adult', 'Male', 'Head', 'Hd', 1001, 'No', 3, 'Ed', 1, 0, 1, 0, 0, 1),
    (2, 'Adult', 'Female', 'Head', 'Hd', 1001, 'No', 3, 'Ed', 0, 0, 0, 1, 0, 0),
    (3, 'Adult', 'Male', 'Eye', 'Ey', 1002, 'No', 2, 'Ed', 0, 0, 1, 0, 0, 0),
    (4, 'Adult', 'Female', 'Eye', 'Ey', 1002, 'No', 2, 'Ed', 0, 0, 0, 1, 0, 1),
    (5, 'Adult', 'Male', 'Brain', 'Br', 1003, 'No', 3, 'Ed', 0, 0, 1, 0, 0, 1),
    (6, 'Adult', 'Female', 'Brain', 'Br', 1003, 'No', 3, 'Ed', 0, 0, 0, 1, 0, 0),
    (7, 'Adult', 'Male', 'Thoracicoabdominal ganglion', 'Tg', 1004, 'No', 2, 'Ed', 0, 0, 1, 0, 0, 1),
    (8, 'Adult', 'Female', 'Thoracicoabdominal ganglion', 'Tg', 1004, 'No', 2, 'Ed', 1, 0, 0, 1, 0, 0),
    (9, 'Adult', 'Male', 'Crop', 'Cr', 1005, 'No', 2, 'Ed', 1, 0, 1, 0, 1, 0),
    (10, 'Adult', 'Female', 'Crop', 'Cr', 1005, 'No', 2, 'Ed', 0, 0, 0, 1, 1, 1),
    (11, 'Adult', 'Male', 'Midgut', 'Mg', 1006, 'No', 3, 'Ed', 0, 0, 1, 0, 1, 1),
    (12, 'Adult', 'Female', 'Midgut', 'Mg', 1006, 'No', 3, 'Ed', 1, 0, 0, 1, 1, 0),
    (13, 'Adult', 'Male', 'Hindgut', 'Hg', 1007, 'No', 3, 'Ed', 1, 0, 1, 0, 1, 0),
    (14, 'Adult', 'Female', 'Hindgut', 'Hg', 1007, 'No', 3, 'Ed', 0, 0, 0, 1, 1, 1),
    (15, 'Adult', 'Male', 'Malpighian Tubules', 'Tu', 1008, 'No', 3, 'Ed', 0, 0, 1, 0, 1, 1),
    (16, 'Adult', 'Female', 'Malpighian Tubules', 'Tu', 1008, 'No', 3, 'Ed', 1, 0, 0, 1, 1, 0),
    (17, 'Adult', 'Male', 'Fat body', 'Fb', 1009, 'No', 3, 'Py', 1, 0, 1, 0, 0, 0),
    (18, 'Adult', 'Female', 'Fat body', 'Fb', 1009, 'No', 3, 'Py', 0, 0, 0, 1, 0, 1),
    (19, 'Adult', 'Male', 'Salivary gland', 'Sg', 1010, 'No', 2, 'Ed', 0, 0, 1, 0, 0, 1),
    (20, 'Adult', 'Female', 'Salivary gland', 'Sg', 1010, 'No', 2, 'Ed', 1, 0, 0, 1, 0, 0),
    (21, 'Adult', 'Male', 'Heart', 'Ht', 1011, 'No', 3, 'Py', 1, 0, 1, 0, 0, 0),
    (22, 'Adult', 'Female', 'Heart', 'Ht', 1011, 'No', 3, 'Py', 0, 0, 0, 1, 0, 1),
    (23, 'Adult', 'Male', 'Carcass', 'Cs', 1012, 'No', 3, 'Ed', 0, 0, 1, 0, 0, 0),
    (24, 'Adult', 'Female', 'Carcass', 'Cs', 1012, 'No', 3, 'Ed', 0, 0, 0, 1, 0, 0),
    (25, 'Adult', 'Male', 'Rectal pad', 'Rp', 1013, 'No', 3, 'Ed', 0, 0, 1, 0, 1, 1),
    (26, 'Adult', 'Female', 'Rectal pad', 'Rp', 1013, 'No', 2, 'Ed', 1, 0, 0, 1, 1, 0),
    (27, 'Adult', 'Male', 'Testis', 'Ts', 1014, 'No', 3, 'Ed', 1, 0, 1, 0, 0, 1),
    (28, 'Adult', 'Male', 'Accessory glands', 'Ag', 1015, 'No', 3, 'Ed', 1, 0, 1, 0, 0, 1),
    (29, 'Adult', 'Female', 'Ovary', 'Ov', 1016, 'No', 3, 'Ed', 1, 0, 0, 1, 0, 1),
    (30, 'Adult', 'Female', 'Virgin Spermatheca', 'Vs', 1017, 'No', 3, 'Py', 0, 0, 0, 1, 0, 1);
