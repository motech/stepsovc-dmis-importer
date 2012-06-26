BEGIN TRANSACTION
BEGIN TRY
IF EXISTS(Select 1 from tbl_referral_receipt  where rr_id='a')
 BEGIN
UPDATE tbl_referral_receipt SET [rr_referrer_name] ='2',[rr_referral_date] ='2012-05-14 00:00:00.000',[rr_follow_up] ='1',[rr_signed] ='1',[rr_signed_date] ='2012-05-14 00:00:00.000',[rr_hlt_art_rec] =1,[rr_hlt_art_ref] =1,[rr_hlt_condoms_rec] =1,[rr_hlt_condoms_ref] =1,[rr_hlt_ct_rec] =1,[rr_hlt_ct_ref] =1,[rr_hlt_diag_rec] =1,[rr_hlt_diag_ref] =1,[rr_hlt_fp_rec] =1,[rr_hlt_fp_ref] =1,[rr_hlt_hosp_rec] =1,[rr_hlt_hosp_ref] =1,[rr_hlt_other_hlt] ='1',[rr_hlt_other_hlt_rec] =1,[rr_hlt_other_hlt_ref] =1,[rr_hlt_pain_rec] =1,[rr_hlt_pain_ref] =1,[rr_hlt_pmtct_rec] =1,[rr_hlt_pmtct_ref] =1,[rr_hlt_sex_trans_rec] =1,[rr_hlt_sex_trans_ref] =1,[ben_id] ='4cf5b740-558d-4802-8108-e3e2d1713621',[cg_id] ='81b33d5d-6bd2-4393-81e2-20b825d49a45',[usr_update_id]='motech-stepsovc',[usr_update_date]=GETDATE() WHERE rr_id='a'
END
ELSE
BEGIN
INSERT INTO [STEPS_OVC_CHONGWE].[dbo].[tbl_referral_receipt]([rr_id],[rr_referrer_name],[rr_referral_date],[rr_follow_up],[rr_signed],[rr_signed_date],[rr_hlt_art_rec],[rr_hlt_art_ref],[rr_hlt_condoms_rec],[rr_hlt_condoms_ref],[rr_hlt_ct_rec],[rr_hlt_ct_ref],[rr_hlt_diag_rec],[rr_hlt_diag_ref],[rr_hlt_fp_rec],[rr_hlt_fp_ref],[rr_hlt_hosp_rec],[rr_hlt_hosp_ref],[rr_hlt_other_hlt],[rr_hlt_other_hlt_rec],[rr_hlt_other_hlt_ref],[rr_hlt_pain_rec],[rr_hlt_pain_ref],[rr_hlt_pmtct_rec],[rr_hlt_pmtct_ref],[rr_hlt_sex_trans_rec],[rr_hlt_sex_trans_ref],[ben_id],[cg_id],[rr_care_name],[rr_eco_strength_name],[rr_edu_name],[rr_food_other],[rr_legal_other],[rr_psych_other_psych],[rr_receive_org],[rr_receiver_title],[rr_referrer_designation],[rr_other_name],[rr_care_rec],[rr_care_ref],[rr_eco_strength_rec],[rr_eco_strength_ref],[rr_edu_rec],[rr_edu_ref],[rr_food_coun_rec],[rr_food_coun_ref],[rr_food_other_rec],[rr_food_other_ref],[rr_food_sup_rec],[rr_food_sup_ref],[rr_legal_abuse_rec],[rr_legal_abuse_ref],[rr_legal_other_rec],[rr_legal_other_ref],[rr_other_rec],[rr_other_ref],[rr_psych_coun_rec],[rr_psych_coun_ref],[rr_psych_other_psych_rec],[rr_psych_other_psych_ref],[rr_psych_other_sup_rec],[rr_psych_other_sup_ref],[rr_psych_pos_liv_rec],[rr_psych_pos_liv_ref],[rr_psych_spiritual_rec],[rr_psych_spiritual_ref],[rr_deleted],[usr_create_id],[usr_update_id],[usr_create_date],[usr_update_date])VALUES('a','2','2012-05-14 00:00:00.000','1','1','2012-05-14 00:00:00.000',1,1,1,1,1,1,1,1,1,1,1,1,'1',1,1,1,1,1,1,1,1,'4cf5b740-558d-4802-8108-e3e2d1713621','81b33d5d-6bd2-4393-81e2-20b825d49a45','','','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'motech-stepsovc','motech-stepsovc',GETDATE(),GETDATE() );
END
IF EXISTS(Select 1 from tbl_referral_receipt  where rr_id='b')
 BEGIN
UPDATE tbl_referral_receipt SET [rr_referrer_name] ='Test',[rr_referral_date] ='2012-05-14 00:00:00.000',[rr_follow_up] ='2',[rr_signed] ='1',[rr_signed_date] ='2012-05-14 00:00:00.000',[rr_hlt_art_rec] =1,[rr_hlt_art_ref] =1,[rr_hlt_condoms_rec] =1,[rr_hlt_condoms_ref] =1,[rr_hlt_ct_rec] =1,[rr_hlt_ct_ref] =1,[rr_hlt_diag_rec] =1,[rr_hlt_diag_ref] =1,[rr_hlt_fp_rec] =1,[rr_hlt_fp_ref] =1,[rr_hlt_hosp_rec] =1,[rr_hlt_hosp_ref] =1,[rr_hlt_other_hlt] ='0',[rr_hlt_other_hlt_rec] =1,[rr_hlt_other_hlt_ref] =1,[rr_hlt_pain_rec] =1,[rr_hlt_pain_ref] =1,[rr_hlt_pmtct_rec] =1,[rr_hlt_pmtct_ref] =1,[rr_hlt_sex_trans_rec] =1,[rr_hlt_sex_trans_ref] =1,[ben_id] ='e57ad9f2-98da-42b1-962b-6b9e636641f0',[cg_id] ='b9f4565f-62b9-4630-8133-cdd3a1b463b8',[usr_update_id]='motech-stepsovc',[usr_update_date]=GETDATE() WHERE rr_id='b'
END
ELSE
BEGIN
INSERT INTO [STEPS_OVC_CHONGWE].[dbo].[tbl_referral_receipt]([rr_id],[rr_referrer_name],[rr_referral_date],[rr_follow_up],[rr_signed],[rr_signed_date],[rr_hlt_art_rec],[rr_hlt_art_ref],[rr_hlt_condoms_rec],[rr_hlt_condoms_ref],[rr_hlt_ct_rec],[rr_hlt_ct_ref],[rr_hlt_diag_rec],[rr_hlt_diag_ref],[rr_hlt_fp_rec],[rr_hlt_fp_ref],[rr_hlt_hosp_rec],[rr_hlt_hosp_ref],[rr_hlt_other_hlt],[rr_hlt_other_hlt_rec],[rr_hlt_other_hlt_ref],[rr_hlt_pain_rec],[rr_hlt_pain_ref],[rr_hlt_pmtct_rec],[rr_hlt_pmtct_ref],[rr_hlt_sex_trans_rec],[rr_hlt_sex_trans_ref],[ben_id],[cg_id],[rr_care_name],[rr_eco_strength_name],[rr_edu_name],[rr_food_other],[rr_legal_other],[rr_psych_other_psych],[rr_receive_org],[rr_receiver_title],[rr_referrer_designation],[rr_other_name],[rr_care_rec],[rr_care_ref],[rr_eco_strength_rec],[rr_eco_strength_ref],[rr_edu_rec],[rr_edu_ref],[rr_food_coun_rec],[rr_food_coun_ref],[rr_food_other_rec],[rr_food_other_ref],[rr_food_sup_rec],[rr_food_sup_ref],[rr_legal_abuse_rec],[rr_legal_abuse_ref],[rr_legal_other_rec],[rr_legal_other_ref],[rr_other_rec],[rr_other_ref],[rr_psych_coun_rec],[rr_psych_coun_ref],[rr_psych_other_psych_rec],[rr_psych_other_psych_ref],[rr_psych_other_sup_rec],[rr_psych_other_sup_ref],[rr_psych_pos_liv_rec],[rr_psych_pos_liv_ref],[rr_psych_spiritual_rec],[rr_psych_spiritual_ref],[rr_deleted],[usr_create_id],[usr_update_id],[usr_create_date],[usr_update_date])VALUES('b','Test','2012-05-14 00:00:00.000','2','1','2012-05-14 00:00:00.000',1,1,1,1,1,1,1,1,1,1,1,1,'0',1,1,1,1,1,1,1,1,'e57ad9f2-98da-42b1-962b-6b9e636641f0','b9f4565f-62b9-4630-8133-cdd3a1b463b8','','','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'motech-stepsovc','motech-stepsovc',GETDATE(),GETDATE() );
END
COMMIT TRANSACTION
END TRY
BEGIN CATCH
PRINT ERROR_MESSAGE();
ROLLBACK TRANSACTION
END CATCH
GO