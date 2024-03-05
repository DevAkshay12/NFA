using MyService as service from '../../srv/service';
using from '../../db/schema';

annotate service.head_sc1 with @(
    UI.LineItem : [
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
            Value : nominate,
            Label : 'Nominate',
        },]
);
annotate service.head_sc1 with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Basic Data',
            ID : 'BasicData',
            Target : '@UI.FieldGroup#BasicData',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Sales View',
            ID : 'SalesView',
            Target : '@UI.FieldGroup#SalesView',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Comments',
            ID : 'comments',
            Target : '@UI.FieldGroup#comments',
        },
    ],
    UI.FieldGroup #BasicData : {
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
annotate service.head_sc1 with @(
    UI.FieldGroup #SalesView : {
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
            },
            {
                $Type : 'UI.DataField',
                Value : Business_Reason,
                Label : 'Business Reason For Request',
            },],
    }
);
annotate service.head_sc1 with {
    Old_Model_Code @Common.FieldControl : #ReadOnly
};
annotate service.head_sc1 with {
    Old_Model_Description @Common.FieldControl : #ReadOnly
};
annotate service.head_sc1 with {
    New_Model_Code @Common.FieldControl : #ReadOnly
};
annotate service.head_sc1 with {
    New_Model_Description @Common.FieldControl : #ReadOnly
};
annotate service.head_sc1 with {
    material_group @Common.FieldControl : #ReadOnly
};

annotate service.head_sc1 with {
    basic_division @Common.FieldControl : #ReadOnly
};
annotate service.head_sc1 with {
    sales_org @Common.FieldControl : #ReadOnly
};
annotate service.head_sc1 with {
    Distribution_channel @Common.FieldControl : #ReadOnly
};
annotate service.head_sc1 with {
    sales_Division @Common.FieldControl : #ReadOnly
};
annotate service.head_sc1 with {
    Base_UOM @Common.FieldControl : #ReadOnly
};
annotate service.head_sc1 with {
    Sales_unit @Common.FieldControl : #ReadOnly
};
annotate service.head_sc1 with {
    Plant @Common.FieldControl : #ReadOnly
};
annotate service.head_sc1 with {
    Business_Reason @Common.FieldControl : #ReadOnly
};
annotate service.head_sc1 with @(
    UI.FieldGroup #comments : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : comments,
                Label : 'comments',
            },],
    }
);
annotate service.head_sc1 with {
    comments @UI.MultiLineText : true
};
annotate service.workflow_History with @(
    UI.LineItem #WorkflowHistory1 : [
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
