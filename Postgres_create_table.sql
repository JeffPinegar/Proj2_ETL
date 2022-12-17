/* Create table for MUDData */
CREATE TABLE public."muddata"
(
    "Serial_No" character varying(50) NOT NULL,
    "Mfg_date" date NOT NULL,
    "Order_Key" character varying(100) NOT NULL,
    "Platform" character varying(20) NOT NULL,
    "Display" character varying(10),
    "Mounting" character varying(10),
    "CPU" character varying(10),
    "OS" character varying(50),
    "SW" character varying(10),
    "RAM" character varying(10),
    "NVRAM" character varying(10),
    "Mass_Store_1" character varying(10),
    "Mass_Store_2" character varying(10),
    "RAID" character varying(10),
    "DVD" character varying(10),
    "PCI" character varying(10),
    "PCI_Slot_1" character varying(10),
    "PCI_Slot_2" character varying(10),
    "Ext_Func" character varying(10),
    "MiniPCI" character varying(10),
    "PS" character varying(10),
    PRIMARY KEY ("Serial_No")
);


/* Create the Sales information table */
CREATE TABLE public."salesinfo"
(
    "ID" serial NOT NULL,
    "IPC_Serial_No" character varying(50) NOT NULL,
    "Sell_Date" character varying NOT NULL,
    "Sell_Price_EUR" money NOT NULL,
    "Country" character(2) NOT NULL,
    PRIMARY KEY ("ID")
);

ALTER TABLE IF EXISTS public."Salesinfo"
    OWNER to postgres;


/* Create table for CMAT Codes */
CREATE TABLE public."cmatcodes"
(
    "Code" character varying(20) NOT NULL,
    "Description" character varying(50),
    PRIMARY KEY ("Code")
);



