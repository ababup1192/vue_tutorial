list_data = [
	'かに'
	'うに'
	'いくら'
]

$ ->
	new Vue
		el: '#lists'
		data:
			selected: list_data[0]
			lists: list_data
