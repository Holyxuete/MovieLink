$(function() {
    "use strict";
    var mapData = {
        "US": 2865,
        "CN": 896,
        "JP": 848,
        "GB": 476,
        "FR": 475,
        "KR": 418,
        "HK": 188,
        "DE": 142,
        "CA": 140,
        "IN": 171,
        "ES": 131,
        "IT": 96,
        "RU": 82,
        "AU": 78,
        "TWN": 76,
        "TH": 47


    };

    if ($('#world_map_marker_1').length > 0) {
        $('#world_map_marker_1').vectorMap({
            map: 'world_mill_en',
            backgroundColor: 'transparent',
            borderColor: '#fff',
            borderOpacity: 0.25,
            borderWidth: 0,
            color: '#e6e6e6',
            regionStyle: {
                initial: {
                    fill: '#ccc'
                }
            },

            markerStyle: {
                initial: {
                    r: 10,
                    'fill': '#fff',
                    'fill-opacity': 1,
                    'stroke': '#000',
                    'stroke-width': 1,
                    'stroke-opacity': 0.4
                },
            },

            markers: [{
                    latLng: [21.00, 78.00],
                    name: '印度 : 171部'

                },
                {
                    latLng: [-33.00, 151.00],
                    name: '澳大利亚 :78部'

                },
                {
                    latLng: [36.77, -100],
                    name: '美国 : 2865部'

                },
                {
                    latLng: [55.37, -3.41],
                    name: '英国 : 476部'

                },
                {
                    latLng: [39, 115],
                    name: '中国:896部'
                }, {
                    latLng: [36, 140],
                    name: '日本:848部'
                },
                {
                    latLng: [45, 2],
                    name: '法国:475部'
                },
                {
                    latLng: [36, 127],
                    name: '韩国:418部'
                }, {
                    latLng: [22.15, 115.15],
                    name: '香港:188部'
                }, {
                    latLng: [51, 9],
                    name: '德国:142部'
                }, {
                    latLng: [54.19, -92.56],
                    name: '加拿大:140部'
                }, {
                    latLng: [40.26, -3.42],
                    name: '西班牙:131部'
                },
                {
                    latLng: [44.28, 11.38],
                    name: '意大利:96部'
                },
                {
                    latLng: [55.45, 37.35],
                    name: '俄罗斯:82部'
                },
                {
                    latLng: [24.05, 120.50],
                    name: '台湾:76部'
                },
                {
                    latLng: [15.45, 100.31],
                    name: '泰国:47部'
                }

            ],

            series: {
                regions: [{
                    values: {

                        "US": '#b3f0ff',
                        "CN": '#007acc',
                        "JP": '#1a53ff',
                        "GB": '#5900b3',
                        "FR": '#00b359',
                        "KR": '#2d862d',
                        "HK": '#635bd6',
                        "DE": '#ffff00',
                        "CA": '#7f8000',
                        "IN": '#ffd633',
                        "ES": '#ffad99',
                        "IT": '#ffcccc',
                        "RU": '#ddeeee',
                        "AU": '#635bd6',
                        "TWN": '#635bd6',
                        "TH": '#009999'
                    },
                    attribute: 'fill'
                }]
            },
            hoverOpacity: null,
            normalizeFunction: 'linear',
            zoomOnScroll: false,
            scaleColors: ['#000000', '#000000'],
            selectedColor: '#000000',
            selectedRegions: [],
            enableZoom: false,
            hoverColor: '#fff',
        });
    }

});