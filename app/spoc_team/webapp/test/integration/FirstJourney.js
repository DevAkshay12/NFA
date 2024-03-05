sap.ui.define([
    "sap/ui/test/opaQunit"
], function (opaTest) {
    "use strict";

    var Journey = {
        run: function() {
            QUnit.module("First journey");

            opaTest("Start application", function (Given, When, Then) {
                Given.iStartMyApp();

                Then.onTheSPOC_IT_TEAMList.iSeeThisPage();

            });


            opaTest("Navigate to ObjectPage", function (Given, When, Then) {
                // Note: this test will fail if the ListReport page doesn't show any data
                
                When.onTheSPOC_IT_TEAMList.onFilterBar().iExecuteSearch();
                
                Then.onTheSPOC_IT_TEAMList.onTable().iCheckRows();

                When.onTheSPOC_IT_TEAMList.onTable().iPressRow(0);
                Then.onTheSPOC_IT_TEAMObjectPage.iSeeThisPage();

            });

            opaTest("Teardown", function (Given, When, Then) { 
                // Cleanup
                Given.iTearDownMyApp();
            });
        }
    }

    return Journey;
});