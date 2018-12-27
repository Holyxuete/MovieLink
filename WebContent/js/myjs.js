$(function() {
	var $info = $('.info')
	var $shrink = $('.shrink')
	var onOff = false
	$shrink.each(function() {
		var str = $(this).prev().html()
		$(this).prev().html(str.substr(0,100))
		$(this).click(function() {
			if(onOff){
				$(this).prev().html(str.substr(0,100)+'...')
				$(this).html('展开')
			}else{
				$(this).prev().html(str.substr(0,700))
				$(this).html('收起')
			}
			onOff = !onOff
			return false
		})
	})
})