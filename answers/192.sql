SELECT used_filters,
	COUNT(DISTINCT searches.search_id) AS searches_count,
	ROUND(
		100 * COUNT(DISTINCT listing_views.search_id) / COUNT(DISTINCT searches.search_id),
		2
	) AS conversion_rate
FROM searches
	LEFT JOIN listing_views ON listing_views.search_id = searches.search_id
GROUP BY used_filters
ORDER BY used_filters