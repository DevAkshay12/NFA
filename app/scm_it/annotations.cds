using MyService as service from '../../srv/service';

annotate service.scm_it with @(
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
annotate service.scm_it with @(
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
            Label : 'Approval Data',
            ID : 'ApprovalData',
            Target : '@UI.FieldGroup#ApprovalData',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Comments',
            ID : 'Comments',
            Target : '@UI.FieldGroup#Comments',
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
annotate service.scm_it with @(
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
            },{
                $Type : 'UI.DataField',
                Value : Business_Reason,
                Label : 'Business Reason',
            },],
    }
);
annotate service.scm_it with @(
    UI.FieldGroup #ApprovalDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.scm_it with @(
    UI.FieldGroup #ApprovalData : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : nominate,
                Label : 'Nominate',
            },{
                $Type : 'UI.DataField',
                Value : status,
                Label : 'Status',
            },],
    }
);
annotate service.scm_it with {
    Old_Model_Code @Common.FieldControl : #ReadOnly
};
annotate service.scm_it with {
    Old_Model_Description @Common.FieldControl : #ReadOnly
};
annotate service.scm_it with {
    New_Model_Code @Common.FieldControl : #ReadOnly
};
annotate service.scm_it with {
    New_Model_Description @Common.FieldControl : #ReadOnly
};
annotate service.scm_it with {
    material_group @Common.FieldControl : #ReadOnly
};
annotate service.scm_it with {
    basic_division @Common.FieldControl : #ReadOnly
};
annotate service.scm_it with {
    sales_org @Common.FieldControl : #ReadOnly
};
annotate service.scm_it with {
    Distribution_channel @Common.FieldControl : #ReadOnly
};
annotate service.scm_it with {
    sales_Division @Common.FieldControl : #ReadOnly
};
annotate service.scm_it with {
    Base_UOM @Common.FieldControl : #ReadOnly
};
annotate service.scm_it with {
    Sales_unit @Common.FieldControl : #ReadOnly
};
annotate service.scm_it with {
    Plant @Common.FieldControl : #ReadOnly
};
annotate service.scm_it with {
    Business_Reason @Common.FieldControl : #ReadOnly
};
annotate service.scm_it with {
    nominate @Common.FieldControl : #ReadOnly
};
annotate service.scm_it with {
    status @Common.FieldControl : #ReadOnly
};
annotate service.scm_it with @(
    UI.FieldGroup #Comments : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Comments,
                Label : 'Comments',
            },],
    }
);
annotate service.scm_it with {
    Comments @UI.MultiLineText : true
};
