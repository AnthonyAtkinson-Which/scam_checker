SCAM_CHECKER = ClassifierReborn::Bayes.new 'Non-scam', 'Scam'


SCAM_CHECKER.train 'scam', 'This stay at home mum earns $700 and hour! YOU COULD TO! find out how.'
SCAM_CHECKER.train 'scam', 'You WON you have won the jackpot click here to claim'
SCAM_CHECKER.train 'scam', 'You have inherrited a fortune from a distant relative'
SCAM_CHECKER.train 'scam', 'Claim your free vouchers today! just clikc this link'
SCAM_CHECKER.train 'scam', 'You bank details may be at risk! please enter your password here to update your security settings!'



SCAM_CHECKER.train 'Non-scam', "Ok thats great so you tomorrow paul"
SCAM_CHECKER.train 'Non-scam', "Thanks for the prompt response Phil. I'll let Kat know so that she's aware of any extra work that may be needed."
SCAM_CHECKER.train 'Non-scam', "I've taken a look at how this is currently working for the test results and it looks like they are given an extra 'order' field (in `external_representation_scenarios`). The items have `default_order` and `recommendations_order`. I think this is how we identify which results are displayed on the BB page"
SCAM_CHECKER.train 'Non-scam', "I'm working on rad-2028 & I need to feed through up to 5 tech spec items for the best buy page to the xrep. We already pass through up to 5 test result items for the bb page. Question is what table and field should I send this to . Knowing wherever the current test results are going to would help if you can tell me. Hopefully we won't need to create new fields, I'm sure the current setup could support this"
SCAM_CHECKER.train 'Non-scam', "anthony.atkinson@which.co.uk bug thanks for getting that sorted so quick"
SCAM_CHECKER.train 'Non-scam', "anthony.atkinson@which.co.uk cheers for the reminder, we can move that meeting to tomorrow"
SCAM_CHECKER.train 'Non-scam', "anthony@work.com this is our plan for the hack day guys"
SCAM_CHECKER.train 'Non-scam', "anthony@work.com just a quick reminder that we have some work to do"
