--branch insert
INSERT INTO Branch (BranchID, BName, BAddress) VALUES (1, 'Central Hall', '123 Main St, CityA');
INSERT INTO Branch (BranchID, BName, BAddress) VALUES (2, 'Lakeside Venue', '456 Lake Rd, CityB');
INSERT INTO Branch (BranchID, BName, BAddress) VALUES (3, 'Seaside Pavilion', '789 Shoreline Dr, CityC');
INSERT INTO Branch (BranchID, BName, BAddress) VALUES (4, 'Hilltop Center', '321 Peak Rd, CityD');
INSERT INTO Branch (BranchID, BName, BAddress) VALUES (5, 'Garden Retreat', '654 Blossom Ln, CityE');
--room insert
-- Existing rooms
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (101, 'A1', 20, 'Standard', 1);
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (102, 'A2', 25, 'Executive', 1);
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (201, 'B1', 30, 'Standard', 2);
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (202, 'B2', 40, 'Executive', 2);
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (301, 'C1', 35, 'Standard', 3);
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (302, 'C2', 45, 'Executive', 3);
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (401, 'D1', 28, 'Standard', 4);
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (402, 'D2', 50, 'Executive', 4);
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (501, 'E1', 22, 'Standard', 5);
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (502, 'E2', 55, 'Executive', 5);

--more rooms for Branch 1
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (103, 'A3', 18, 'Standard', 1);
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (104, 'A4', 30, 'Executive', 1);
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (105, 'A5', 22, 'Standard', 1);

--more rooms for Branch 2
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (203, 'B3', 28, 'Standard', 2);
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (204, 'B4', 38, 'Executive', 2);
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (205, 'B5', 26, 'Standard', 2);

--more rooms for Branch 3
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (303, 'C3', 32, 'Standard', 3);
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (304, 'C4', 44, 'Executive', 3);
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (305, 'C5', 30, 'Standard', 3);

--more rooms for Branch 4
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (403, 'D3', 26, 'Standard', 4);
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (404, 'D4', 48, 'Executive', 4);
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (405, 'D5', 29, 'Standard', 4);

--more rooms for Branch 5
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (503, 'E3', 24, 'Standard', 5);
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (504, 'E4', 52, 'Executive', 5);
INSERT INTO Room (RoomID, RoomNumber, RSize, RType, BranchID) VALUES (505, 'E5', 27, 'Standard', 5);


--standard room insert
INSERT INTO StandardRoom (RoomID, HasDecor) VALUES (101, 'Y');
INSERT INTO StandardRoom (RoomID, HasDecor) VALUES (201, 'N');
INSERT INTO StandardRoom (RoomID, HasDecor) VALUES (301, 'Y');
INSERT INTO StandardRoom (RoomID, HasDecor) VALUES (401, 'N');
INSERT INTO StandardRoom (RoomID, HasDecor) VALUES (501, 'Y');
INSERT INTO StandardRoom (RoomID, HasDecor) VALUES (103, 'N');
INSERT INTO StandardRoom (RoomID, HasDecor) VALUES (105, 'Y');
INSERT INTO StandardRoom (RoomID, HasDecor) VALUES (203, 'Y');
INSERT INTO StandardRoom (RoomID, HasDecor) VALUES (205, 'N');
INSERT INTO StandardRoom (RoomID, HasDecor) VALUES (303, 'Y');
INSERT INTO StandardRoom (RoomID, HasDecor) VALUES (305, 'N');
INSERT INTO StandardRoom (RoomID, HasDecor) VALUES (403, 'Y');
INSERT INTO StandardRoom (RoomID, HasDecor) VALUES (405, 'N');
INSERT INTO StandardRoom (RoomID, HasDecor) VALUES (503, 'Y');
INSERT INTO StandardRoom (RoomID, HasDecor) VALUES (505, 'N');

--executive room insert
INSERT INTO ExecutiveRoom (RoomID, BuffetOrdered) VALUES (102, 'Y');
INSERT INTO ExecutiveRoom (RoomID, BuffetOrdered) VALUES (202, 'N');
INSERT INTO ExecutiveRoom (RoomID, BuffetOrdered) VALUES (302, 'Y');
INSERT INTO ExecutiveRoom (RoomID, BuffetOrdered) VALUES (402, 'N');
INSERT INTO ExecutiveRoom (RoomID, BuffetOrdered) VALUES (502, 'Y');
INSERT INTO ExecutiveRoom (RoomID, BuffetOrdered) VALUES (104, 'Y');
INSERT INTO ExecutiveRoom (RoomID, BuffetOrdered) VALUES (204, 'N');
INSERT INTO ExecutiveRoom (RoomID, BuffetOrdered) VALUES (304, 'Y');
INSERT INTO ExecutiveRoom (RoomID, BuffetOrdered) VALUES (404, 'N');
INSERT INTO ExecutiveRoom (RoomID, BuffetOrdered) VALUES (504, 'Y');

--employee insert
-- Branch 1: Central Hall
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (1, 'Alice', 'Smith', 'Manager', 'alice@ease.co.uk', 1);
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (6, 'Brian', 'Taylor', 'Receptionist', 'brian@ease.co.uk', 1);
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (7, 'Chloe', 'Adams', 'Technician', 'chloe@ease.co.uk', 1);
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (8, 'Derek', 'White', 'Security', 'derek@ease.co.uk', 1);
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (9, 'Ella', 'Moore', 'Support Staff', 'ella@ease.co.uk', 1);

-- Branch 2: Lakeside Venue
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (2, 'Bob', 'Johnson', 'Receptionist', 'bob@ease.co.uk', 2);
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (10, 'Faye', 'Turner', 'Manager', 'faye@ease.co.uk', 2);
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (11, 'George', 'Cooper', 'Technician', 'george@ease.co.uk', 2);
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (12, 'Holly', 'Bailey', 'Security', 'holly@ease.co.uk', 2);
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (13, 'Ian', 'Foster', 'Support Staff', 'ian@ease.co.uk', 2);

-- Branch 3: Seaside Pavilion
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (3, 'Clara', 'Lee', 'Coordinator', 'clara@ease.co.uk', 3);
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (14, 'Jack', 'Reed', 'Manager', 'jack@ease.co.uk', 3);
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (15, 'Karen', 'Cruz', 'Receptionist', 'karen@ease.co.uk', 3);
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (16, 'Leo', 'Diaz', 'Technician', 'leo@ease.co.uk', 3);
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (17, 'Mia', 'Watson', 'Support Staff', 'mia@ease.co.uk', 3);

-- Branch 4: Hilltop Center
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (4, 'David', 'Nguyen', 'Event Planner', 'david@ease.co.uk', 4);
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (18, 'Nina', 'Griffin', 'Manager', 'nina@ease.co.uk', 4);
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (19, 'Oscar', 'Banks', 'Receptionist', 'oscar@ease.co.uk', 4);
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (20, 'Paula', 'Myers', 'Technician', 'paula@ease.co.uk', 4);
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (21, 'Quinn', 'James', 'Support Staff', 'quinn@ease.co.uk', 4);

-- Branch 5: Garden Retreat
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (5, 'Emma', 'Garcia', 'Support Staff', 'emma@ease.co.uk', 5);
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (22, 'Rachel', 'King', 'Manager', 'rachel@ease.co.uk', 5);
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (23, 'Steve', 'Norris', 'Receptionist', 'steve@ease.co.uk', 5);
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (24, 'Tina', 'Hughes', 'Event Planner', 'tina@ease.co.uk', 5);
INSERT INTO Employee (EmployeeID, EFName, ELName, EPosition, EEmail, BranchID) VALUES (25, 'Umar', 'Patel', 'Technician', 'umar@ease.co.uk', 5);

--customer insert
INSERT INTO Customer (CustomerID, CustFName, CustLName, CustEmail, CustPhone, CustType) VALUES (1, 'Charlie', 'Brown', 'charlie@client.com', '1234567890', 'Standard');
INSERT INTO Customer (CustomerID, CustFName, CustLName, CustEmail, CustPhone, CustType) VALUES (2, 'Diana', 'Green', 'diana@business.com', '9876543210', 'Business');
INSERT INTO Customer (CustomerID, CustFName, CustLName, CustEmail, CustPhone, CustType) VALUES (3, 'Ethan', 'Wright', 'ethan@client.com', '5555555555', 'Standard');
INSERT INTO Customer (CustomerID, CustFName, CustLName, CustEmail, CustPhone, CustType) VALUES (4, 'Fiona', 'Lopez', 'fiona@business.com', '4444444444', 'Business');
INSERT INTO Customer (CustomerID, CustFName, CustLName, CustEmail, CustPhone, CustType) VALUES (5, 'George', 'Hill', 'george@client.com', '3333333333', 'Standard');
INSERT INTO Customer (CustomerID, CustFName, CustLName, CustEmail, CustPhone, CustType) VALUES (6, 'Hannah', 'Smith', 'hannah@business.com', '2222222222', 'Business'); 
INSERT INTO Customer (CustomerID, CustFName, CustLName, CustEmail, CustPhone, CustType) VALUES (7, 'Ian', 'Johnson', 'ian@client.com', '1111111111', 'Standard');
INSERT INTO Customer (CustomerID, CustFName, CustLName, CustEmail, CustPhone, CustType) VALUES (8, 'Jasmine', 'Lee', 'jasmine@business.com', '9999999999', 'Business');
INSERT INTO Customer (CustomerID, CustFName, CustLName, CustEmail, CustPhone, CustType) VALUES (9, 'Kevin', 'Nguyen', 'kevin@client.com', '8888888888', 'Standard');
INSERT INTO Customer (CustomerID, CustFName, CustLName, CustEmail, CustPhone, CustType) VALUES (10, 'Lena', 'Patel', 'lena@business.com', '7777777777', 'Business');
INSERT INTO Customer (CustomerID, CustFName, CustLName, CustEmail, CustPhone, CustType) VALUES (11, 'Marcus', 'Davis', 'marcus@client.com', '6666666666', 'Standard');
INSERT INTO Customer (CustomerID, CustFName, CustLName, CustEmail, CustPhone, CustType) VALUES (12, 'Nina', 'Clark', 'nina@business.com', '1231231234', 'Business');
INSERT INTO Customer (CustomerID, CustFName, CustLName, CustEmail, CustPhone, CustType) VALUES (13, 'Oscar', 'Rodriguez', 'oscar@client.com', '3213214321', 'Standard');
INSERT INTO Customer (CustomerID, CustFName, CustLName, CustEmail, CustPhone, CustType) VALUES (14, 'Priya', 'Mehta', 'priya@business.com', '5551234567', 'Business');
INSERT INTO Customer (CustomerID, CustFName, CustLName, CustEmail, CustPhone, CustType) VALUES (15, 'Quinn', 'Walker', 'quinn@client.com', '4449876543', 'Standard');



--booking insert
INSERT INTO Booking (BookingID, CustomerID, RoomID, BranchID, StartDate, EndDate, InvoiceRequired)
VALUES (1, 1, 101, 1, TO_DATE('2025-05-20', 'YYYY-MM-DD'), TO_DATE('2025-05-21', 'YYYY-MM-DD'), 'N');
INSERT INTO Booking (BookingID, CustomerID, RoomID, BranchID, StartDate, EndDate, InvoiceRequired)
VALUES (2, 2, 102, 1, TO_DATE('2025-06-01', 'YYYY-MM-DD'), TO_DATE('2025-06-02', 'YYYY-MM-DD'), 'Y');
INSERT INTO Booking (BookingID, CustomerID, RoomID, BranchID, StartDate, EndDate, InvoiceRequired)
VALUES (3, 3, 201, 2, TO_DATE('2025-07-10', 'YYYY-MM-DD'), TO_DATE('2025-07-11', 'YYYY-MM-DD'), 'N');
INSERT INTO Booking (BookingID, CustomerID, RoomID, BranchID, StartDate, EndDate, InvoiceRequired)
VALUES (4, 4, 302, 3, TO_DATE('2025-08-15', 'YYYY-MM-DD'), TO_DATE('2025-08-16', 'YYYY-MM-DD'), 'Y');
INSERT INTO Booking (BookingID, CustomerID, RoomID, BranchID, StartDate, EndDate, InvoiceRequired)
VALUES (5, 5, 401, 4, TO_DATE('2025-09-01', 'YYYY-MM-DD'), TO_DATE('2025-09-02', 'YYYY-MM-DD'), 'N');
INSERT INTO Booking (BookingID, CustomerID, RoomID, BranchID, StartDate, EndDate, InvoiceRequired)
VALUES (6, 6, 103, 1, TO_DATE('2025-05-25', 'YYYY-MM-DD'), TO_DATE('2025-05-26', 'YYYY-MM-DD'), 'Y');
INSERT INTO Booking (BookingID, CustomerID, RoomID, BranchID, StartDate, EndDate, InvoiceRequired)
VALUES (7, 7, 202, 2, TO_DATE('2025-06-05', 'YYYY-MM-DD'), TO_DATE('2025-06-06', 'YYYY-MM-DD'), 'N');
INSERT INTO Booking (BookingID, CustomerID, RoomID, BranchID, StartDate, EndDate, InvoiceRequired)
VALUES (8, 8, 203, 2, TO_DATE('2025-06-20', 'YYYY-MM-DD'), TO_DATE('2025-06-21', 'YYYY-MM-DD'), 'Y');
INSERT INTO Booking (BookingID, CustomerID, RoomID, BranchID, StartDate, EndDate, InvoiceRequired)
VALUES (9, 9, 303, 3, TO_DATE('2025-07-01', 'YYYY-MM-DD'), TO_DATE('2025-07-02', 'YYYY-MM-DD'), 'N');
INSERT INTO Booking (BookingID, CustomerID, RoomID, BranchID, StartDate, EndDate, InvoiceRequired)
VALUES (10, 10, 402, 4, TO_DATE('2025-07-10', 'YYYY-MM-DD'), TO_DATE('2025-07-11', 'YYYY-MM-DD'), 'Y');
INSERT INTO Booking (BookingID, CustomerID, RoomID, BranchID, StartDate, EndDate, InvoiceRequired)
VALUES (11, 11, 104, 1, TO_DATE('2025-07-15', 'YYYY-MM-DD'), TO_DATE('2025-07-16', 'YYYY-MM-DD'), 'N');
INSERT INTO Booking (BookingID, CustomerID, RoomID, BranchID, StartDate, EndDate, InvoiceRequired)
VALUES (12, 12, 204, 2, TO_DATE('2025-08-01', 'YYYY-MM-DD'), TO_DATE('2025-08-02', 'YYYY-MM-DD'), 'Y');
INSERT INTO Booking (BookingID, CustomerID, RoomID, BranchID, StartDate, EndDate, InvoiceRequired)
VALUES (13, 13, 304, 3, TO_DATE('2025-08-10', 'YYYY-MM-DD'), TO_DATE('2025-08-11', 'YYYY-MM-DD'), 'Y');
INSERT INTO Booking (BookingID, CustomerID, RoomID, BranchID, StartDate, EndDate, InvoiceRequired)
VALUES (14, 14, 403, 4, TO_DATE('2025-08-20', 'YYYY-MM-DD'), TO_DATE('2025-08-21', 'YYYY-MM-DD'), 'N');
INSERT INTO Booking (BookingID, CustomerID, RoomID, BranchID, StartDate, EndDate, InvoiceRequired)
VALUES (15, 15, 105, 1, TO_DATE('2025-09-05', 'YYYY-MM-DD'), TO_DATE('2025-09-06', 'YYYY-MM-DD'), 'Y');

--supplier insert
INSERT INTO Supplier (SupplierID, SName, SContact) VALUES (1, 'FreshFoods Ltd', 'fresh@foods.com');
INSERT INTO Supplier (SupplierID, SName, SContact) VALUES (2, 'DecorMagic', 'contact@decormagic.com');
INSERT INTO Supplier (SupplierID, SName, SContact) VALUES (3, 'TechHub', 'support@techhub.com');
INSERT INTO Supplier (SupplierID, SName, SContact) VALUES (4, 'GreenGrocers', 'hello@greengrocers.com');
INSERT INTO Supplier (SupplierID, SName, SContact) VALUES (5, 'Elite Events', 'bookings@eliteevents.com');

--supplies insert
INSERT INTO Supplies (SupplyID, SupplyDetails, SupplyDate, BranchID, SupplierID)
VALUES (1, 'Buffet catering', TO_DATE('2025-05-10', 'YYYY-MM-DD'), 1, 1);
INSERT INTO Supplies (SupplyID, SupplyDetails, SupplyDate, BranchID, SupplierID)
VALUES (2, 'Theme-based decorations', TO_DATE('2025-05-12', 'YYYY-MM-DD'), 1, 2);
INSERT INTO Supplies (SupplyID, SupplyDetails, SupplyDate, BranchID, SupplierID)
VALUES (3, 'Lunch buffet setup', TO_DATE('2025-05-15', 'YYYY-MM-DD'), 2, 1);
INSERT INTO Supplies (SupplyID, SupplyDetails, SupplyDate, BranchID, SupplierID)
VALUES (4, 'video conferencing gear', TO_DATE('2025-05-16', 'YYYY-MM-DD'), 2, 3);
INSERT INTO Supplies (SupplyID, SupplyDetails, SupplyDate, BranchID, SupplierID)
VALUES (5, 'Organic ingredients for vegan buffet', TO_DATE('2025-05-18', 'YYYY-MM-DD'), 3, 4);
INSERT INTO Supplies (SupplyID, SupplyDetails, SupplyDate, BranchID, SupplierID)
VALUES (6, 'Event coordination and logistics support', TO_DATE('2025-05-20', 'YYYY-MM-DD'), 4, 5);
INSERT INTO Supplies (SupplyID, SupplyDetails, SupplyDate, BranchID, SupplierID)
VALUES (7, 'Floral centerpieces and lighting', TO_DATE('2025-05-22', 'YYYY-MM-DD'), 5, 2);

commit;