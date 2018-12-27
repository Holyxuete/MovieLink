$(function() {
	var dom = document.getElementById("director");
    var myChart = echarts.init(dom,"macarons");
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
            text: '电影数量前10编剧',
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
        tooltip : {
            trigger: 'item',
            formatter: "{b} : {c}"
        },
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
    myChart.on('click', function (params) {
        console.log(dataAxis[Math.max(params.dataIndex - zoomSize / 2, 0)]);
        myChart.dispatchAction({
            type: 'dataZoom',
            startValue: dataAxis[Math.max(params.dataIndex - zoomSize / 2, 0)],
            endValue: dataAxis[Math.min(params.dataIndex + zoomSize / 2, data.length - 1)]
        });
    });;
    if (option && typeof option === "object") {
        myChart.setOption(option, true);
    }
    
    var scw = document.getElementById("scriptwriter");
    var scriptwriter = echarts.init(scw,'macarons');
    var app = {};
    option1 = null;

    option1 = {
		title : {
            text: '拍片数量前 10 导演',
            x:'left',
            textStyle: {
                fontSize: 18,
                fontWeight: 'bolder',
                color: '#000000'          // 主标题文字颜色
            },
        },
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
                data: ['史蒂文·斯皮尔伯格','三池崇史','埃里克·侯麦','阿尔弗雷德·希区柯克','王晶','阿基·考里斯马基','堤幸彦','迈克尔·贝','洪尚秀','佩德罗·阿莫多瓦','吴宇森','伍迪·艾伦'],
                axisPointer: {
                    type: 'shadow'
                }
            }
        ],
        yAxis: [
            {
                type: 'value',
                name: '拍片数量',
                min: 10,
                max: 25,
                interval: 4,
                axisLabel: {
                    formatter: '{value} 部'
                }
            },
            {
                type: 'value',
                name: '阅读量',
                min: 0,
                max: 120000,
                interval: 20000,
                axisLabel: {
                    formatter: '{value} 次'
                }
            }
        ],
        series: [
            {
                name:'数量',
                type:'bar',
                data:[21,20,19,18,15,14,13,13,11,11,11,11]
            },
            {
                name:'阅读量',
                type:'line',
                yAxisIndex: 1,
                data:[112335,19135,6866,7537,58729,5543,3355,50539,7166,4450,16014,10414]
            }
        ]
    };

    if (option1 && typeof option1 === "object") {
    	scriptwriter.setOption(option1, true);
    }
})