[1mdiff --git a/Gemfile b/Gemfile[m
[1mindex 503b8a8..e9d2787 100644[m
[1m--- a/Gemfile[m
[1m+++ b/Gemfile[m
[36m@@ -1,24 +1,52 @@[m
 source 'https://rubygems.org'[m
 gem 'rails', '3.2.11'[m
 [m
[32m+[m
[32m+[m
[32m+[m[32mplatforms :ruby do # linux[m
[32m+[m[41m  [m
[32m+[m[32mgem 'unicorn'[m
[32m+[m
[32m+[m[32mend[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m[32mplatforms :mswin do[m
[32m+[m[41m  [m
[32m+[m[32m# gems specific to windows[m
[32m+[m
[32m+[m[32mend[m
[32m+[m
[32m+[m
[32m+[m
 group :development do[m
   gem 'sqlite3'[m
 end[m
 [m
[31m-group :production do[m
[32m+[m[32mgroup[m[41m [m
[32m+[m[32m      :production do[m
   gem 'pg'[m
 end[m
 [m
 [m
[31m-group :assets do[m
[32m+[m[32mgroup[m[41m [m
[32m+[m[32m      :assets do[m
   gem 'sass-rails',   '~> 3.2.3'[m
[31m-  gem 'coffee-rails', '~> 3.2.1'[m
[31m-  gem 'uglifier', '>= 1.0.3'[m
[31m-end[m
[32m+[m[41m  [m
[32m+[m[32m                  gem 'coffee-rails', '~> 3.2.1'[m
[32m+[m[41m  [m
[32m+[m[32m                  gem 'uglifier', '>= 1.0.3'[m
[32m+[m
[32m+[m[32m              end[m
[32m+[m
 gem 'jade-js-source', git: 'https://github.com/wavii/jade', branch: 'coffeescript-support'[m
[32m+[m
 gem 'tilt-jade', '~> 1.1.2'[m
[32m+[m
 gem 'jquery-rails'[m
[32m+[m
 gem "thin", ">= 1.5.0"[m
[32m+[m
 gem "rspec-rails", ">= 2.11.4", :group => [:development, :test][m
 gem "database_cleaner", ">= 0.9.1", :group => :test[m
 gem "email_spec", ">= 1.4.0", :group => :test[m
[36m@@ -26,17 +54,28 @@[m [mgem "cucumber-rails", ">= 1.3.0", :group => :test, :require => false[m
 gem "launchy", ">= 2.1.2", :group => :test[m
 gem "capybara", ">= 1.1.3", :group => :test[m
 gem "factory_girl_rails", ">= 4.1.0", :group => [:development, :test][m
[32m+[m
 gem "bootstrap-sass", ">= 2.1.1.0"[m
[32m+[m
 gem "devise", ">= 2.1.2"[m
[32m+[m
 gem "cancan", ">= 1.6.8"[m
[32m+[m
 gem "rolify", ">= 3.2.0"[m
[32m+[m
 gem "simple_form", ">= 2.0.4"[m
[32m+[m
 gem "stripe", ">= 1.7.4"[m
[32m+[m
 gem "stripe_event", ">= 0.4.0"[m
[32m+[m
 gem "quiet_assets", ">= 1.0.1", :group => :development[m
 [m
 gem 'slim'[m
 gem "rubyzip", ">= 0.9.9"[m
[32m+[m
 gem 'backbone-rails'[m
 gem 'bigdecimal'[m
[31m-gem 'unicorn'[m
[32m+[m
[32m+[m
[32m+[m[32m# gem 'unicorn'  http://stackoverflow.com/questions/10764199/develop-on-windows-run-unicorn-in-production-on-heroku/10764443#10764443[m
[1mdiff --git a/Gemfile.lock b/Gemfile.lock[m
[1mindex b4d911a..504f997 100644[m
[1m--- a/Gemfile.lock[m
[1m+++ b/Gemfile.lock[m
[36m@@ -40,6 +40,7 @@[m [mGEM[m
     backbone-rails (0.9.2)[m
       rails (>= 3.0.0)[m
     bcrypt-ruby (3.0.1)[m
[32m+[m[32m    bcrypt-ruby (3.0.1-x86-mingw32)[m
     bigdecimal (1.1.0)[m
     bootstrap-sass (2.2.1.1)[m
       sass (~> 3.2)[m
[36m@@ -83,6 +84,7 @@[m [mGEM[m
       mail (~> 2.2)[m
     erubis (2.7.0)[m
     eventmachine (1.0.0)[m
[32m+[m[32m    eventmachine (1.0.0-x86-mingw32)[m
     execjs (1.4.0)[m
       multi_json (~> 1.0)[m
     factory_girl (4.1.0)[m
[36m@@ -91,8 +93,11 @@[m [mGEM[m
       factory_girl (~> 4.1.0)[m
       railties (>= 3.0.0)[m
     ffi (1.2.0)[m
[32m+[m[32m    ffi (1.2.0-x86-mingw32)[m
     gherkin (2.11.5)[m
       json (>= 1.4.6)[m
[32m+[m[32m    gherkin (2.11.5-x86-mingw32)[m
[32m+[m[32m      json (>= 1.4.6)[m
     hike (1.2.1)[m
     i18n (0.6.1)[m
     journey (1.0.4)[m
[36m@@ -113,8 +118,10 @@[m [mGEM[m
     mime-types (1.19)[m
     multi_json (1.5.0)[m
     nokogiri (1.5.5)[m
[32m+[m[32m    nokogiri (1.5.5-x86-mingw32)[m
     orm_adapter (0.4.0)[m
     pg (0.14.1)[m
[32m+[m[32m    pg (0.14.1-x86-mingw32)[m
     polyglot (0.3.3)[m
     quiet_assets (1.0.1)[m
       railties (~> 3.1)[m
[36m@@ -181,6 +188,7 @@[m [mGEM[m
       rack (~> 1.0)[m
       tilt (~> 1.1, != 1.3.0)[m
     sqlite3 (1.3.6)[m
[32m+[m[32m    sqlite3 (1.3.6-x86-mingw32)[m
     stripe (1.7.8)[m
       multi_json (>= 1.0.4, < 2)[m
       rest-client (~> 1.4)[m
[36m@@ -218,6 +226,7 @@[m [mGEM[m
 [m
 PLATFORMS[m
   ruby[m
[32m+[m[32m  x86-mingw32[m
 [m
 DEPENDENCIES[m
   backbone-rails[m
[1mdiff --git a/app/models/logic.rb b/app/models/logic.rb[m
[1mindex a09e452..27683e5 100644[m
[1m--- a/app/models/logic.rb[m
[1m+++ b/app/models/logic.rb[m
[36m@@ -459,9 +459,16 @@[m [mclass Logic[m
     params["PARAGRAPH_DISCUSSION_PROGNOSIS"]               = ""[m
     params["PARAGRAPH_CAPABILITY_OF_MANAGING_FUNDS"]       = ""[m
     params["PARAGRAPH_MEDICAL_SOURCE_STATEMENT"]           = ""[m
[32m+[m[32m    params["PARAGRAPH_CONCLUSION"]                         = ""[m
[32m+[m[32m    params["MEDICATION"]                                   = ""[m
[32m+[m[32m    params["DOSAGE"]                                       = ""[m
[32m+[m[32m    params["EFFECTIVENESS"]                                = ""[m
[32m+[m[41m    [m
 [m
     last_employment_place = 'FILL_THIS_IN' # ie, use the Q55 table and pull out the "last" row[m
 [m
[32m+[m[32m    params['PARAGRAPH_CONCLUSION'] << "Testing Conclusion Varaiable in logic.rb"[m
[32m+[m
     params['PARAGRAPH_IDENTIFICATION'] << "#{fullname} is a #{age}-year old #{ethnicity} #{sex.downcase}. #{cap_pronoun} was born in #{birthplace} on #{birthdate}."[m
 [m
     params['PARAGRAPH_GENERAL'] << "#{title} #{lastname} arrived #{q8.downcase}, #{q9.downcase} and was #{q8a.downcase}."[m
[36m@@ -473,11 +480,14 @@[m [mclass Logic[m
       params['PARAGRAPH_CONFIDENTIALITY'] << "#{q11a.capitalize} is the historian for this interview. "[m
     end[m
 [m
[32m+[m[32m    params["PARAGRAPH_CHIEF_COMPLAINT"] << "#{q13}"[m
[32m+[m[41m    [m
     if is_truish(qa14)[m
[31m-      params['PARAGRAPH_HISTORY_OF_PRESENT_ILLNESS'] << "#{title} #{lastname} was first diagnosed with #{q13} in #{q14} by #{q14a}. #{q14b}"[m
[32m+[m[32m      params['PARAGRAPH_REVIEW_OF_RECORDS'] << "#{title} #{lastname} was first diagnosed with #{q13} in #{q14} by #{q14a}. #{q14b}"[m
     else[m
[31m-      params['PARAGRAPH_HISTORY_OF_PRESENT_ILLNESS'] << "#{title} #{lastname} has not been previously diagnosed with #{q13}. "[m
[32m+[m[32m      params['PARAGRAPH_REVIEW_OF_RECORDS'] << "#{title} #{lastname} has not been previously diagnosed with #{q13}. "[m
     end[m
[32m+[m[41m    [m
     params['PARAGRAPH_HISTORY_OF_PRESENT_ILLNESS'] << "Current symptoms of #{q13} include: #{q16}. #{cap_pronoun} also reported additional symptoms of: #{q16a.downcase}. "[m
     if is_truish(q15)[m
       params['PARAGRAPH_HISTORY_OF_PRESENT_ILLNESS'] << "Special circumstances at the onset of the conditions were: #{q15a}. "[m
[36m@@ -506,10 +516,13 @@[m [mclass Logic[m
       params['PARAGRAPH_HISTORY_OF_PRESENT_ILLNESS'] << "#{q20a}. "[m
     end[m
 [m
[31m-    params['PARAGRAPH_CURRENT_MEDICATIONS'] << "#{title} #{fullname} #{q21} currently taking medication. "[m
[31m-[m
[32m+[m[32m    params['PARAGRAPH_CURRENT_MEDICATIONS'] << "#{title} #{fullname} #{q21} currently taking medication.  "[m
     if is_truish(q21)[m
[31m-      params['PARAGRAPH_CURRENT_MEDICATIONS'] << "#{cap_pronoun} is prescribed #{q22}. #{cap_pronoun} reported #{pronoun} #{q21a} #{pos_pronoun} medications today. They are prescribed by #{q177.downcase}."[m
[32m+[m[32m      params['PARAGRAPH_CURRENT_MEDICATIONS'] << "#{cap_pronoun} is prescribed the following medications below. "[m
[32m+[m[32m      params['PARAGRAPH_CURRENT_MEDICATIONS'] << "#{cap_pronoun} reported #{pronoun} #{q21a} #{pos_pronoun} medications today. They are prescribed by #{q177.downcase}."[m
[32m+[m[32m      params['MEDICATION'] <<  "#{q22}"[m
[32m+[m[32m      params['DOSAGE'] << "#{q22}"[m
[32m+[m[32m      params['EFFECTIVENESS'] << "#{q22}"[m
     end[m
 [m
     params['PARAGRAPH_PAST_PSYCHIATRIC_HISTORY'] << "#{title} #{lastname} reported #{pronoun} #{q29} been admitted to a psychiatric hospital. "[m
[36m@@ -602,34 +615,30 @@[m [mclass Logic[m
       params['PARAGRAPH_EMPLOYMENT_HISTORY'] << "#{cap_pronoun} reported #{pronoun} #{qa186a} had periods of unemployment due to #{qa56}. "[m
     end[m
 [m
[31m-    params['PARAGRAPH_EDUCATIONAL_HISTORY'] << "#{title} #{lastname}'s last level of education completed was #{q48}. "[m
[31m-    params['PARAGRAPH_EDUCATIONAL_HISTORY'] << "#{cap_pronoun} reported #{pos_pronoun} academic performance was #{q49.downcase}. "[m
[31m-    params['PARAGRAPH_EDUCATIONAL_HISTORY'] << "Additional relevant information about #{pos_pronoun} academic performance includes: #{q49a}. "[m
[32m+[m[32m    params['PARAGRAPH_EDUCATIONAL_HISTORY'] << "#{title} #{lastname}'s last level of education completed was #{q48}.  "[m
[32m+[m[32m    params['PARAGRAPH_EDUCATIONAL_HISTORY'] << "#{cap_pronoun} reported #{pos_pronoun} academic performance was #{q49.downcase}.  "[m
[32m+[m[32m    params['PARAGRAPH_EDUCATIONAL_HISTORY'] << "Additional relevant information about #{pos_pronoun} academic performance includes: #{q49a}.  "[m
     params['PARAGRAPH_EDUCATIONAL_HISTORY'] << "#{cap_pronoun} #{q49b} involved in school related activities"[m
     if is_truish(q49b)[m
       params['PARAGRAPH_EDUCATIONAL_HISTORY'] << " such as: #{q49c}. "[m
     else[m
[31m-      params['PARAGRAPH_EDUCATIONAL_HISTORY'] << "."[m
[32m+[m[32m      params['PARAGRAPH_EDUCATIONAL_HISTORY'] << ".  "[m
     end[m
[31m-[m
     params['PARAGRAPH_EDUCATIONAL_HISTORY'] << "#{cap_pronoun} #{q50} enrolled in special education courses"[m
     if is_truish(q50)[m
       params['PARAGRAPH_EDUCATIONAL_HISTORY'] << " in the following subjects: #{q51}. "[m
     else[m
[31m-      params['PARAGRAPH_EDUCATIONAL_HISTORY'] << "."[m
[32m+[m[32m      params['PARAGRAPH_EDUCATIONAL_HISTORY'] << ".  "[m
     end[m
 [m
[31m-[m
[31m-[m
[31m-[m
     params['PARAGRAPH_LEGAL_CRIMINAL_HISTORY'] << "#{title} #{lastname} #{qa57}"[m
     if is_truish(qa57)[m
[31m-      params['PARAGRAPH_LEGAL_CRIMINAL_HISTORY'] << " for #{qa57a}. The most recent arrest was on #{qa58}, and the outcome was #{qa59}. #{cap_pronoun} #{qa57b} been arrested multiple times. "[m
[32m+[m[32m      params['PARAGRAPH_LEGAL_CRIMINAL_HISTORY'] << " for #{qa57a}. The most recent arrest was on #{qa58}, and the outcome was #{qa59}.  #{cap_pronoun} #{qa57b} been arrested multiple times.  "[m
     end[m
     if is_truish(qa60)[m
[31m-      params['PARAGRAPH_LEGAL_CRIMINAL_HISTORY'] << "#{cap_pronoun} #{qa60} incarcerated on #{qa60b}. The incarceration lasted #{qa60a}. "[m
[32m+[m[32m      params['PARAGRAPH_LEGAL_CRIMINAL_HISTORY'] << "#{cap_pronoun} #{qa60} incarcerated on #{qa60b}.  The incarceration lasted #{qa60a}. "[m
     else[m
[31m-      params['PARAGRAPH_LEGAL_CRIMINAL_HISTORY'] << "#{cap_pronoun} has never been incarcerated. "[m
[32m+[m[32m      params['PARAGRAPH_LEGAL_CRIMINAL_HISTORY'] << "#{cap_pronoun} has never been incarcerated.  "[m
     end[m
 [m
     params['PARAGRAPH_MILITARY_HISTORY'] << "#{title} #{lastname} #{qa61} in the military. "[m
[36m@@ -864,6 +873,7 @@[m [mclass Logic[m
     params['PARAGRAPH_MEDICAL_SOURCE_STATEMENT'] << "#{fullname}’s fund of knowledge is #{q125.downcase} when compared to #{pos_pronoun} peers. "[m
     params['PARAGRAPH_MEDICAL_SOURCE_STATEMENT'] << "#{cap_pos} ability to solve basic mathematical problems is #{q131.downcase}. #{cap_pronoun} #{q156}. "[m
 [m
[32m+[m[41m        [m
     return params[m
   end[m
 end[m
[1mdiff --git a/app/views/template/_Q16-illness.slim b/app/views/template/_Q16-illness.slim[m
[1mindex dd0bf5d..ca26e37 100644[m
[1m--- a/app/views/template/_Q16-illness.slim[m
[1m+++ b/app/views/template/_Q16-illness.slim[m
[36m@@ -95,7 +95,6 @@[m [msubsection#Q16E(title="Autism Disorder")[m
 [m
 [m
 subsection#Q16F(title="Bipolar Disorder")[m
[31m-  text HELLO WORLD!!![m
   text Manic Episode:[m
   CheckboxSet[m
     Value A distinct period of abnormally and persistently elevated, expansive, or irritable mood, lasting at least 1 week.[m
[1mdiff --git a/app/views/template/_doc.slim b/app/views/template/_doc.slim[m
[1mindex 03f1e1a..5111e81 100644[m
[1m--- a/app/views/template/_doc.slim[m
[1m+++ b/app/views/template/_doc.slim[m
[36m@@ -175,7 +175,7 @@[m [msection#Current-Medications[m
   group.21_yes[m
     question(name="Q177" text="Who is writing the prescriptions?")[m
       CheckboxSet[m
[31m-        Value A psychiatristf[m
[32m+[m[32m        Value A psychiatrist[m
         Value A PCP[m
         Value A nurse practitioner[m
     question(name="Q21A" text="Did the claimant take any medication today?")[m
[36m@@ -1366,7 +1366,6 @@[m [msection#Current-Level-of-Functioning[m
         td Grocery shopping[m
         td: TextBox[m
 [m
[31m-[m
   section_text Current Level of Functioning - Decompensation and Deterioration[m
   question(name="Q167" text="Is there evidence of deterioration and decompensation in the workplace?")[m
     RadioSet[m
warning: LF will be replaced by CRLF in Gemfile.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in Gemfile.lock.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in app/models/logic.rb.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in app/views/template/_Q16-illness.slim.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in app/views/template/_doc.slim.
The file will have its original line endings in your working directory.
[1mdiff --git a/templates/real.docx b/templates/real.docx[m
[1mindex c996636..e40e12b 100644[m
[1m--- a/templates/real.docx[m
[1m+++ b/templates/real.docx[m
[36m@@ -18,24 +18,21 @@[m [mCHIEF COMPLAINT[m
 FILLIN_PARAGRAPH_CHIEF_COMPLAINT[m
 [m
 REVIEW OF RECORDS[m
[31m- FILLIN_PARAGRAPH_REVIEW_OF_RECORDS[m
[32m+[m[32mFILLIN_PARAGRAPH_REVIEW_OF_RECORDS[m
 HISTORY OF PRESENT ILLNESS[m
 FILLIN_PARAGRAPH_HISTORY_OF_PRESENT_ILLNESS[m
 CURRENT MEDICATIONS [m
 FILLIN_PARAGRAPH_CURRENT_MEDICATIONS[m
[31m-[m
[31m-22table.[m
                                   Medication[m
                                   Dosage (mg)[m
                                   Usefulness[m
 ROWFILLIN_MEDICATION[m
 ROWFILLIN_DOSAGE[m
[31m-ROWFILLIN_USEFULNESS[m
[32m+[m[32mROWFILLIN_EFFECTIVENESS[m
 [m
 PAST PSYCHIATRIC HISTORY[m
 FILLIN_PARAGRAPH_PAST_PSYCHIATRIC_HISTORY[m
 [m
[31m-[m
 ALCOHOL AND/OR DRUG ABUSE[m
 FILLIN_PARAGRAPH_ALCOHOL_AND_OR_DRUG_ABUSE[m
 [m
[36m@@ -52,6 +49,7 @@[m [mFILLIN_PARAGRAPH_LEGAL_CRIMINAL_HISTORY[m
 [m
 MILITARY HISTORY[m
 FILLIN_PARAGRAPH_MILITARY_HISTORY[m
[32m+[m
                            MENTAL STATUS EXAMINATION[m
 [m
 GENERAL APPEARANCE [m
[36m@@ -68,10 +66,10 @@[m [mCONTENT OF THOUGHT[m
 FILLIN_PARAGRAPH_CONTENT_OF_THOUGHT[m
 [m
 [m
[31m-[m
 STREAM OF MENTAL ACTIVITY/SPEECH[m
 FILLIN_PARAGRAPH_STREAM_OF_MENTAL_ACTIVITY_SPEECH[m
 [m
[32m+[m
                       INTELLECTUAL FUNCTIONING/SENSORIUM[m
 [m
 ORIENTATION[m
[36m@@ -85,50 +83,22 @@[m [mFILLIN_PARAGRAPH_TESTING_BEHAVIORS[m
 [m
 INTELLECTUAL FUNCTIONING[m
 [m
[31m-If using Psychological Testing:[m
[31m-[m
[31m-FILLIN_PARAGRAPH_INTELLECTUAL_FUNCTIONING[m
[31m-[m
[31m-If using Interview Questions:[m
 FILLIN_PARAGRAPH_INTELLECTUAL_FUNCTIONING[m
 [m
 MEMORYnormal#1[m
 [m
[31m-If using Psychological Testing:[m
[31m-[m
[31m-FILLIN_PARAGRAPH_MEMORY[m
[31m-[m
[31m-If using Interview Questions:[m
[31m-[m
 FILLIN_PARAGRAPH_MEMORY[m
 [m
 FUND OF KNOWLEDGE/INFORMATION [m
 [m
[31m-If using Psychological Testing:[m
[31m-FILLIN_PARAGRAPH_FUND_OF_KNOWLEDGE_INFORMATION[m
[31m-[m
[31m-If using Interview Questions:[m
 FILLIN_PARAGRAPH_FUND_OF_KNOWLEDGE_INFORMATION[m
 [m
 CALCULATIONS [m
 [m
[31m-If using Psychological Testing:[m
[31m-FILLIN_PARAGRAPH_CALCULATIONS[m
[31m-[m
[31m-If using Interview Questions:[m
 FILLIN_PARAGRAPH_CALCULATIONS[m
 [m
[31m-[m
[31m-[m
[31m-[m
 CONCENTRATION[m
 normal#1normal#2[m
[31m-If using Psychological Testing:[m
[31m-[m
[31m-FILLIN_PARAGRAPH_CONCENTRATION[m
[31m-[m
[31m-If using Interview Questions:[m
[31m-[m
 FILLIN_PARAGRAPH_CONCENTRATION[m
 [m
 SIMILARITIES/DIFFERENCES& ABSTRACT THINKINGnormal#1Error! Bookmark not defined.[m
[36m@@ -142,9 +112,7 @@[m [mIf using Interview Questions:[m
 To explain the proverb, "Time is golden," he said, "FILLIN_Q142."[m
 [m
 To explain the proverb, "Rome was not built in a day," he said, "FILLIN_Q142A."[m
[31m-[m
 Comparing a boat and a car, he said, "FILLIN_Q146."[m
[31m-[m
 Comparing a pen and a pencil, he said, "FILLIN_Q146A."[m
 [m
 JUDGMENT/INSIGHT[m
[36m@@ -153,7 +121,7 @@[m [mFILLIN_PARAGRAPH_JUDGEMENT_INSIGHT[m
 He was asked a series of questions to assess his judgment, including one about smoke in a movie theater and another about finding a purse in a store. Based on his responses, Mr. FILLIN_Q1 has FILLIN_Q152 judgment.[m
 [m
 TRAILS[m
[31m-[m
[32m+[m[41m                                                                               [m
 FILLIN_PARAGRAPH_TRAILS[m
  [m
                               TRAIL MAKING TESTS[m
[36m@@ -173,7 +141,6 @@[m [mTRAIL B[m
                                 FILLIN_Q149_B3[m
                                 FILLIN_Q149_B4[m
 [m
[31m-[m
 NEUROPSYCHOLOGICAL [m
 FILLIN_Q302[m
 [m
[36m@@ -184,6 +151,7 @@[m [mMr. FILLIN_Q1 was administered a FILLIN_Q303. FILLIN_Q304[m
 MALINGERING[m
 [m
 Mr. FILLIN_Q1 was administered a FILLIN_Q305. FILLIN_Q306[m
[32m+[m
                          CURRENT LEVEL OF FUNCTIONING[m
 [m
 ACTIVITIES OF DAILY LIVING[m
[36m@@ -206,26 +174,10 @@[m [mCAPABILITY OF MANAGING FUNDS[m
 FILLIN_PARAGRAPH_CAPABILITY_OF_MANAGING_FUNDS[m
 [m
 MEDICAL SOURCE STATEMENT[m
[31m-If using psychological testing:[m
[31m-[m
[31m-FILLIN_PARAGRAPH_MEDICAL_SOURCE_STATEMENT[m
[31m-[m
[31m-If using interview questions:[m
[31m-FILLIN_PARAGRAPH_MEDICAL_SOURCE_STATEMENT[m
[31m-If using psychological testing:[m
[31m-* His understanding is in the (insert 200) range.His fund of knowledge falls in the FILLIN_Q125 range.[m
[31m-If using interview questions:[m
[31m-FILLIN_PARAGRAPH_MEDICAL_SOURCE_STATEMENT[m
[31m-[m
[31m-If using psychological testing:[m
[31m-FILLIN_PARAGRAPH_MEDICAL_SOURCE_STATEMENT[m
[31m-If using interview questions:[m
 FILLIN_PARAGRAPH_MEDICAL_SOURCE_STATEMENT[m
[31m-[m
 If using psychological testing:[m
[31m-FILLIN_PARAGRAPH_MEDICAL_SOURCE_STATEMENT[m
[32m+[m[32m* His understanding is in the (insert 200) range.  His fund of knowledge falls in the FILLIN_Q125 range.[m
 [m
[31m-If using interview questions:[m
[31m-FILLIN_PARAGRAPH_MEDICAL_SOURCE_STATEMENT[m
[32m+[m[32m                                  CONCLUSION[m
 [m
[31m-[m
[32m+[m[32mFILLIN_PARAGRAPH_CONCLUSION[m
