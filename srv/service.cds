
using db from '../db/schema';

service MyService {
    @odata.draft.enabled
    entity SPOC_IT_TEAM as projection on db.SPOC_IT_TEAM;
    entity s1 as projection on db.s1;

    //==app 2===
     @odata.draft.enabled
    entity cpcc_team as projection on db.cpcc_team;
    entity Files as projection on db.Files; 

    //==app 3===
    @odata.draft.enabled
    entity head_scm as projection on db.head_scm;

    //==app 3A===
    @odata.draft.enabled
    entity head_sc1 as projection on db.head_scm1;

    //==app 3B===
    @odata.draft.enabled
    entity head_sc2 as projection on db.head_scm2;

    //==app 4===
    @odata.draft.enabled
    entity scm_it as projection on db.scm_it;

    entity workflow_History as projection on db.workflow_History;
}