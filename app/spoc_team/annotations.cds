using MyService as service from '../../srv/service';

annotate service.SPOC_IT_TEAM with @(
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
annotate service.SPOC_IT_TEAM with @(
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
annotate service.SPOC_IT_TEAM with @(
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
                Label : 'Sales unit',
            },{
                $Type : 'UI.DataField',
                Value : Plant,
                Label : 'Plant',
            },{
                $Type : 'UI.DataField',
                Value : Business_Reason,
                Label : 'Business Reason For Request',
            },],
    }
);
annotate service.SPOC_IT_TEAM with {
    Old_Model_Description @Common.FieldControl : #ReadOnly
};
annotate service.SPOC_IT_TEAM with {
    Old_Model_Code @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 's1',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Old_Model_Code,
                    ValueListProperty : 'Old_Model_Code',
                    
                },
            ],
            Label : 'model',
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.SPOC_IT_TEAM with {
    material_group @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 's1',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : material_group,
                    ValueListProperty : 'material_group',
                },
            ],
            Label : 'mat_group',
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.SPOC_IT_TEAM with {
    basic_division @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 's1',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : basic_division,
                    ValueListProperty : 'Division',
                },
            ],
            Label : 'div',
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.SPOC_IT_TEAM with {
    Business_Reason @UI.MultiLineText : true
};
annotate service.SPOC_IT_TEAM with {
    sales_org @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 's1',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : sales_org,
                    ValueListProperty : 'Sales_org',
                },
            ],
            Label : 'sales_org',
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.SPOC_IT_TEAM with {
    Distribution_channel @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 's1',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Distribution_channel,
                    ValueListProperty : 'Distribution_Channel',
                },
            ],
            Label : 'distr',
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.SPOC_IT_TEAM with {
    sales_Division @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 's1',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : sales_Division,
                    ValueListProperty : 'Division',
                },
            ],
            Label : 'sale_div',
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.SPOC_IT_TEAM with {
    Base_UOM @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 's1',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Base_UOM,
                    ValueListProperty : 'Base_UOM',
                },
            ],
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.SPOC_IT_TEAM with {
    Sales_unit @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 's1',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Sales_unit,
                    ValueListProperty : 'Sales_Unit',
                },
            ],
            Label : 'sale_unit',
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.SPOC_IT_TEAM with {
    Plant @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 's1',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Plant,
                    ValueListProperty : 'Plant',
                },
            ],
            Label : 'plant_help',
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.SPOC_IT_TEAM with @(
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
annotate service.SPOC_IT_TEAM with {
    comments @UI.MultiLineText : true
};
