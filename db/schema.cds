namespace db;

using {
    cuid,
    managed
} from '@sap/cds/common';

entity SPOC_IT_TEAM {
        Old_Model_Code        : String;
        Old_Model_Description : String;
    key New_Model_Code        : String;
        New_Model_Description : String;
        basic_division        : String;
        material_group        : String;

        //second sec

        sales_org             : String;
        Distribution_channel  : String;
        sales_Division        : String;
        Base_UOM              : String;
        Sales_unit            : String;
        Plant                 : String;
        Business_Reason       : String;
}


//search help
entity s1 {
    Old_Model_Code             : String @Common.Label: 'Old Model Code';
    material_group             : String @Common.Label: 'Material Group';
    material_group_description : String;
    Sales_org                  : String @Common.Label: 'Sales Org';
    Distribution_Channel       : String @Common.Label: 'Distribution Channel';
    Division                   : String;
    Base_UOM                   : String @Common.Label: 'Base UOM';
    Sales_Unit                 : String @Common.Label: 'Sales Unit';
    Plant                      : String;

}


//==========================application 2================================

entity cpcc_team {

        Old_Model_Code        : String;
        Old_Model_Description : String;
    key New_Model_Code        : String;
        New_Model_Description : String;
        basic_division        : String;
        material_group        : String;

        //second sec

        sales_org             : String;
        Distribution_channel  : String;
        sales_Division        : String;
        Base_UOM              : String;
        Sales_unit            : String;
        Plant                 : String;
        Business_Reason       : String;
        comments              : String;
        child                 : Association to many workflow_History
                                    on child.parent = $self;

}


entity workflow_History {
    key New_Model_Code  : String;
        Title           : String;
        Employee_id     : String;
        Employee_Name   : String;
        Begin_Date_Time : String;
        End_Date_Time   : String;
        Days_Taken      : String;
        Approved_By     : String;
        parent          : Association to one cpcc_team
                              on parent.New_Model_Code = New_Model_Code;
        parent1         : Association to one head_scm1
                              on parent1.New_Model_Code = New_Model_Code;


}

//attachments for second application

entity Files : cuid, managed {
    key id1       : String;

        @Core.MediaType  : mediaType
        content   : LargeBinary;

        @Core.IsMediaType: true
        mediaType : String;
        fileName  : String;
        size      : Integer;
        url       : String;
}

//===================application 3=========================================

entity head_scm {
    key nominate              : String;
        Old_Model_Code        : String;
        Old_Model_Description : String;
    key New_Model_Code        : String;
        New_Model_Description : String;
        material_group        : String;
}

//===================application 3A=========================================

entity head_scm1 {

        nominate              : String;
        //sec 1
        Old_Model_Code        : String;
        Old_Model_Description : String;
    key New_Model_Code        : String;
        New_Model_Description : String;
        basic_division        : String;
        material_group        : String;

        //second sec

        sales_org             : String;
        Distribution_channel  : String;
        sales_Division        : String;
        Base_UOM              : String;
        Sales_unit            : String;
        Plant                 : String;
        Business_Reason       : String;
        comments              : String;
        child1                : Composition of many workflow_History
                                    on child1.parent1 = $self;


}

//===================application 3B=========================================

entity head_scm2 {
        nominate              : String;
        //sec 1
        Old_Model_Code        : String;
        Old_Model_Description : String;
    key New_Model_Code        : String;
        New_Model_Description : String;
        basic_division        : String;
        material_group        : String;

        //second sec

        sales_org             : String;
        Distribution_channel  : String;
        sales_Division        : String;
        Base_UOM              : String;
        Sales_unit            : String;
        Plant                 : String;
        Business_Reason       : String;
        comments              : String
}


//===================application 4=========================================

entity scm_it {
        nominate              : String;
        //sec 1
        Old_Model_Code        : String;
        Old_Model_Description : String;
    key New_Model_Code        : String;
        New_Model_Description : String;
        basic_division        : String;
        material_group        : String;

        //second sec

        sales_org             : String;
        Distribution_channel  : String;
        sales_Division        : String;
        Base_UOM              : String;
        Sales_unit            : String;
        Plant                 : String;
        Business_Reason       : String;
        status                : String;
        Comments              : String;
}
