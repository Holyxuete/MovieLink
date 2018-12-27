$(function() {
    var lan = document.getElementById("language");
    var language = echarts.init(lan,'macarons');
    var app = {};
    option = null;
    app.title = '环形图';

    option = {
		title : {
            text: '影片语言数量统计',
            x:'right',
            textStyle: {
                fontSize: 18,
//                fontWeight: 'bolder',
                color: '#000000'          // 主标题文字颜色
            },
        },
        tooltip: {
            trigger: 'item',
            formatter: "{b} : {c} 部 ({d}%)"
        }, 
        legend: {
            orient: 'vertical',
            x: 'left',
            data:['汉语普通话','德语','韩语','印度语','英语','粤语','法语','俄语','日语','西班牙语']
        },
        series: [
            {
                name:'',
                type:'pie',
                radius: ['50%', '70%'],
                avoidLabelOverlap: false,
                label: {
                    normal: {
                        show: false,
                        position: 'center'
                    },
                    emphasis: {
                        show: true,
                        textStyle: {
                            fontSize: '30',
                            fontWeight: 'bold'
                        }
                    }
                },
                labelLine: {
                    normal: {
                        show: false
                    }
                },
                data:[
                    {value:1008, name:'汉语普通话'},
                    {value:151, name:'德语'},
                    {value:447, name:'韩语'},
                    {value:83, name:'印度语'},
                    {value:3993, name:'英语'},
                    {value:161, name:'粤语'},
                    {value:441, name:'法语'},
                    {value:107, name:'俄语'},
                    {value:883, name:'日语'},
                    {value:159, name:'西班牙语'}
                ]
            }
        ]
    };
    if (option && typeof option === "object") {
    	language.setOption(option, true);
    }
})