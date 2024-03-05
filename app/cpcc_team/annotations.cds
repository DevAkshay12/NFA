using MyService as service from '../../srv/service';
using from '../../db/schema';

annotate service.cpcc_team with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Basic Data',
            ID : 'section1',
            Target : '@UI.FieldGroup#section1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Sales View',
            ID : 'section2',
            Target : '@UI.FieldGroup#section2',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Comments',
            ID : 'Comments',
            Target : '@UI.FieldGroup#Comments',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Workflow History',
            ID : 'WorkflowHistory',
            Target : 'child/@UI.LineItem#WorkflowHistory',
        },
    ],
    UI.FieldGroup #section1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Old_Model_Code,
                Label : 'Old Model Code',
            },{
                $Type : 'UI.DataField',
                Value : Old_Model_Description,
                Label : 'Old Model Description',
            },{
                $Type : 'UI.DataField',
                Value : New_Model_Code,
                Label : 'New Model Code',
            },{
                $Type : 'UI.DataField',
                Value : New_Model_Description,
                Label : 'New Model Description',
            },{
                $Type : 'UI.DataField',
                Value : material_group,
                Label : 'Material Group',
            },{
                $Type : 'UI.DataField',
                Value : basic_division,
                Label : 'Division',
            },],
    }
);
annotate service.cpcc_team with @(
    UI.FieldGroup #section2 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : sales_org,
                Label : 'Sales Org',
            },{
                $Type : 'UI.DataField',
                Value : Distribution_channel,
                Label : 'Distribution Channel',
            },{
                $Type : 'UI.DataField',
                Value : sales_Division,
                Label : 'Division',
            },{
                $Type : 'UI.DataField',
                Value : Base_UOM,
                Label : 'Base UOM',
            },{
                $Type : 'UI.DataField',
                Value : Sales_unit,
                Label : 'Sales Unit',
            },{
                $Type : 'UI.DataField',
                Value : Plant,
                Label : 'Plant',
            },{
                $Type : 'UI.DataField',
                Value : Business_Reason,
                Label : 'Business Reason',
            },],
    }
);
annotate service.cpcc_team with {
    basic_division @Common.FieldControl : #ReadOnly
};
annotate service.cpcc_team with {
    Old_Model_Code @Common.FieldControl : #ReadOnly
};
annotate service.cpcc_team with {
    Old_Model_Description @Common.FieldControl : #ReadOnly
};
annotate service.cpcc_team with {
    New_Model_Code @Common.FieldControl : #ReadOnly
};
annotate service.cpcc_team with {
    New_Model_Description @Common.FieldControl : #ReadOnly
};
annotate service.cpcc_team with {
    material_group @Common.FieldControl : #ReadOnly
};
annotate service.cpcc_team with {
    sales_org @Common.FieldControl : #ReadOnly
};
annotate service.cpcc_team with {
    Distribution_channel @Common.FieldControl : #ReadOnly
};
annotate service.cpcc_team with {
    sales_Division @Common.FieldControl : #ReadOnly
};
annotate service.cpcc_team with {
    Base_UOM @Common.FieldControl : #ReadOnly
};
annotate service.cpcc_team with {
    Sales_unit @Common.FieldControl : #ReadOnly
};
annotate service.cpcc_team with {
    Business_Reason @Common.FieldControl : #ReadOnly
};
annotate service.cpcc_team with {
    Plant @Common.FieldControl : #ReadOnly
};
annotate service.cpcc_team with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : Old_Model_Code,
            Label : 'Old Model Code',
        },
        {
            $Type : 'UI.DataField',
            Value : Old_Model_Description,
            Label : 'Old Model Description',
        },
        {
            $Type : 'UI.DataField',
            Value : New_Model_Code,
            Label : 'New Model Code',
        },
        {
            $Type : 'UI.DataField',
            Value : New_Model_Description,
            Label : 'New Model Description',
        },
        {
            $Type : 'UI.DataField',
            Value : material_group,
            Label : 'Material Group',
        },
    ]
);

annotate service.cpcc_team with @(
    UI.FieldGroup #Comments : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : comments,
                Label : 'comments',
            },],
    }
);
annotate service.cpcc_team with {
    comments @UI.MultiLineText : true
};
annotate service.workflow_History with @(
    UI.LineItem #WorkflowHistory : [
        {
            $Type : 'UI.DataField',
            Value : Title,
            Label : 'Title',
        },{
            $Type : 'UI.DataField',
            Value : Employee_id,
            Label : 'Employee_id',
        },{
            $Type : 'UI.DataField',
            Value : Employee_Name,
            Label : 'Employee_Name',
        },{
            $Type : 'UI.DataField',
            Value : Begin_Date_Time,
            Label : 'Begin_Date_Time',
        },{
            $Type : 'UI.DataField',
            Value : End_Date_Time,
            Label : 'End_Date_Time',
        },{
            $Type : 'UI.DataField',
            Value : Days_Taken,
            Label : 'Days_Taken',
        },{
            $Type : 'UI.DataField',
            Value : Approved_By,
            Label : 'Approved_By',
        },]
);
