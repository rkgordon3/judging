module CompetitorsHelper
	def	competitor_page_id(event)
		"competitor_index_e#{event.id}"
	end
	def competitor_scoresheet_page_id(event, competitor, judge)
		"competitor_scoresheet_e#{event.id}_c#{competitor.id}_j#{judge.id}"
	end
end
