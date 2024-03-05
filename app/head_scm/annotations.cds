using MyService as service from '../../srv/service';

annotate service.head_scm with @(
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
