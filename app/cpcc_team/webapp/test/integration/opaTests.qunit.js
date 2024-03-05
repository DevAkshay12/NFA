sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'cpccteam/test/integration/FirstJourney',
		'cpccteam/test/integration/pages/cpcc_teamList',
		'cpccteam/test/integration/pages/cpcc_teamObjectPage'
    ],
    function(JourneyRunner, opaJourney, cpcc_teamList, cpcc_teamObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('cpccteam') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThecpcc_teamList: cpcc_teamList,
					onThecpcc_teamObjectPage: cpcc_teamObjectPage
                }
            },
            opaJourney.run
        );
    }
);