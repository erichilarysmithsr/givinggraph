SELECT non.nonprofits_id, non.name, causes.name, my_table.*
FROM (
	SELECT *
	FROM giving.nonprofits_communities_by_tweets
	WHERE (causes_id, community) IN(
		SELECT causes_id, community
		FROM giving.nonprofits_communities_by_tweets as com
		WHERE com.nonprofits_id = XXXXX
	)
) as my_table
JOIN giving.nonprofits as non on non.nonprofits_id = my_table.nonprofits_id
LEFT JOIN giving.causes as causes on causes.causes_id = my_table.causes_id