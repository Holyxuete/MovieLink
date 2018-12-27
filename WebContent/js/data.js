$(function() {
    var myChart = echarts.init(document.getElementById('durations'));
    var app = {};
    option1 = null;
    option1 = {
        backgroundColor: '#2c343c',
        title : {
            text: '电影时长分区段统计数量',
            x:'center',
            textStyle: {
                fontSize: 18,
                fontWeight: 'bolder',
                color: '#ffffff'          // 主标题文字颜色
            },
        },
        tooltip : {
            trigger: 'item',
            formatter: "{b}<br/> : {c} ({d}%)"
        },
        series : [
            {
                type: 'pie',
                radius: '55%',
                center : [ '50%', '50%' ],
                data:[
                    {value:350, name:'60-80分钟'},
                    {value:3054, name:'81-100分钟'},
                    {value:2610, name:'101-120分钟'},
                    {value:1034, name:'121-140分钟'},
                    {value:228, name:'141-160分钟'}
                ]
            }
        ]
    };
    if (option1 && typeof option1 === "object") {
        myChart.setOption(option1, true);
    }
    
    var genre = echarts.init(document.getElementById('genre'),'dark')
	var app = {};
	option2 = null;
	app.title = '折柱混合';
	
	option2 = {
	    tooltip: {
	        trigger: 'axis',
	        axisPointer: {
	            type: 'cross',
	            crossStyle: {
	                color: '#999'
	            }
	        }
	    },
	    toolbox: {
	        feature: {
	            dataView: {show: true, readOnly: false},
	            magicType: {show: true, type: ['line', 'bar']},
	            restore: {show: true},
	            saveAsImage: {show: true}
	        }
	    },
	    legend: {
	        data:['数量','阅读量']
	    },
	    xAxis: [
	        {
	            type: 'category',
	            data: ['剧情','喜剧','动作','惊悚','动画','犯罪','爱情','纪录片','科幻','传记','历史'],
	            axisPointer: {
	                type: 'shadow'
	            }
	        }
	    ],
	    yAxis: [
	        {
	            type: 'value',
	            name: '数量',
	            min: 10,
	            max: 3500,
	            interval: 500,
	            axisLabel: {
	                formatter: '{value} 部'
	            }
	        },
	        {
	            type: 'value',
	            name: '阅读量',
	            min: 14000,
	            max: 5200000,
	            interval: 750000,
	            axisLabel: {
	                formatter: '{value} 次'
	            }
	        }
	    ],
	    series: [
	        {
	            name:'数量',
	            type:'bar',
	            data:[3462,1493,969,571,266,199,197,181,179,85,11]
	        },
	        {
	            name:'阅读量',
	            type:'bar',
	            yAxisIndex: 1,
	            data:[5103896,2069407,2679624,753646, 255374,146455,189957,189995,368544, 102578,14483]
	        }
	    ]};
	if (option2 && typeof option2 === "object") {
		genre.setOption(option2, true);
	};
	
	// 拍片前10导演
    var director = echarts.init(document.getElementById("director"),'dark');
    var app = {};
    option = null;
    var dataAxis = ['郭子圣','园子温','叶念琛','洪尚秀','埃里克·侯麦','王晶','阿基·考里斯马基','吕克贝松','佩德罗·阿莫多瓦','山田洋次','伍迪·艾伦',];
    var data = [9,9,10,11,19,23,14,11,11,9,9];
    var yMax = 30;
    var dataShadow = [];

    for (var i = 0; i < data.length; i++) {
        dataShadow.push(yMax);
    }

    option = {
        title: {
            text: '拍片数量前10导演',
        },
        xAxis: {
            data: dataAxis,
            axisLabel: {
                inside: true,
                textStyle: {
                    color: '#fff'
                }
            },
            axisTick: {
                show: false
            },
            axisLine: {
                show: false
            },
            z: 10
        },
        yAxis: {
            axisLine: {
                show: false
            },
            axisTick: {
                show: false
            },
            axisLabel: {
                textStyle: {
                    color: '#999'
                }
            }
        },
        dataZoom: [
            {
                type: 'inside'
            }
        ],
        series: [
            { // For shadow
                type: 'bar',
                itemStyle: {
                    normal: {color: 'rgba(0,0,0,0.05)'}
                },
                barGap:'-100%',
                barCategoryGap:'40%',
                data: dataShadow,
                animation: false
            },
            {
                type: 'bar',
                itemStyle: {
                    normal: {
                        color: new echarts.graphic.LinearGradient(
                            0, 0, 0, 1,
                            [
                                {offset: 0, color: '#83bff6'},
                                {offset: 0.5, color: '#188df0'},
                                {offset: 1, color: '#188df0'}
                            ]
                        )
                    },
                    emphasis: {
                        color: new echarts.graphic.LinearGradient(
                            0, 0, 0, 1,
                            [
                                {offset: 0, color: '#2378f7'},
                                {offset: 0.7, color: '#2378f7'},
                                {offset: 1, color: '#83bff6'}
                            ]
                        )
                    }
                },
                data: data
            }
        ]
    };

    // Enable data zoom when user click bar.
    var zoomSize = 6;
    director.on('click', function (params) {
//        console.log(dataAxis[Math.max(params.dataIndex - zoomSize / 2, 0)]);
        director.dispatchAction({
            type: 'dataZoom',
            startValue: dataAxis[Math.max(params.dataIndex - zoomSize / 2, 0)],
            endValue: dataAxis[Math.min(params.dataIndex + zoomSize / 2, data.length - 1)]
        });
    });;
    if (option && typeof option === "object") {
    	director.setOption(option, true);
    }
})