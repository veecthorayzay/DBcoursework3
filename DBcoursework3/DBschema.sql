
DROP TABLE Supplies CASCADE CONSTRAINTS;
DROP TABLE Booking CASCADE CONSTRAINTS;
DROP TABLE StandardRoom CASCADE CONSTRAINTS;
DROP TABLE ExecutiveRoom CASCADE CONSTRAINTS;
DROP TABLE Room CASCADE CONSTRAINTS;
DROP TABLE Employee CASCADE CONSTRAINTS;
DROP TABLE Customer CASCADE CONSTRAINTS;
DROP TABLE Supplier CASCADE CONSTRAINTS;
DROP TABLE Branch CASCADE CONSTRAINTS;

CREATE TABLE Branch (
    BranchID     NUMBER PRIMARY KEY,
    BName         VARCHAR2(30),
    BAddress      VARCHAR2(40)
);

CREATE TABLE Room (
    RoomID       NUMBER PRIMARY KEY,
    RoomNumber   VARCHAR2(10),
    RSize        NUMBER,
    RType        VARCHAR2(15) CHECK (RType IN ('Standard', 'Executive')),
    BranchID     NUMBER,
    FOREIGN KEY (BranchID) REFERENCES Branch(BranchID),
    UNIQUE (RoomNumber, BranchID)
);

CREATE TABLE StandardRoom (
    RoomID               NUMBER PRIMARY KEY,
    HasDecor  CHAR(1) CHECK (HasDecor IN ('Y', 'N')),
    FOREIGN KEY (RoomID) REFERENCES Room(RoomID)
);

CREATE TABLE ExecutiveRoom (
    RoomID         NUMBER PRIMARY KEY,
    BuffetOrdered  CHAR(1) CHECK (BuffetOrdered IN ('Y', 'N')),
    FOREIGN KEY (RoomID) REFERENCES Room(RoomID)
);

CREATE TABLE Employee (
    EmployeeID     NUMBER PRIMARY KEY,
    EFName         VARCHAR2(30),
    ELName         VARCHAR2(30),
    EPosition       VARCHAR2(50),
    EEmail          VARCHAR2(75),
    BranchID       NUMBER,
    FOREIGN KEY (BranchID) REFERENCES Branch(BranchID)
);

CREATE TABLE Customer (
    CustomerID     NUMBER PRIMARY KEY,
    CustFName      VARCHAR2(30),
    CustLName      VARCHAR2(30),
    CustEmail          VARCHAR2(75),
    CustPhone          VARCHAR2(15),
    CustType   VARCHAR2(20) CHECK (CustType IN ('Standard', 'Business'))
);

CREATE TABLE Booking (
    BookingID        NUMBER PRIMARY KEY,
    CustomerID       NUMBER,
    RoomID           NUMBER,
    BranchID         NUMBER,
    StartDate        DATE,
    EndDate          DATE,
    InvoiceRequired  CHAR(1) CHECK (InvoiceRequired IN ('Y', 'N')),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (RoomID) REFERENCES Room(RoomID),
    FOREIGN KEY (BranchID) REFERENCES Branch(BranchID)
);

CREATE TABLE Supplier (
    SupplierID     NUMBER PRIMARY KEY,
    SName           VARCHAR2(50),
    SContact    VARCHAR2(100)
);

CREATE TABLE Supplies (
    SupplyID     NUMBER PRIMARY KEY,
    SupplyDetails VARCHAR2(100),
    SupplyDate    DATE,
    BranchID     NUMBER,
    SupplierID   NUMBER,
    FOREIGN KEY (BranchID) REFERENCES Branch(BranchID),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID)
);