var	currSpeed;

$( function(){
		
	var gaugeOptions = {

	    chart: {
	        type: 'solidgauge'
	    },

	    title: null,

	    pane: {
	        center: ['50%', '85%'],
	        size: '150%',
	        startAngle: -90,
	        endAngle: 90,
	        background: {
	            backgroundColor: (Highcharts.theme && Highcharts.theme.background2) || '#EEE',
	            innerRadius: '60%',
	            outerRadius: '100%',
	            shape: 'arc'
	        }
	    },

	    tooltip: {
	        enabled: false
	    },

	    // the value axis
	    yAxis: {
	        stops: [
	            [0.1, '#55BF3B'], // green
	            [0.5, '#DDDF0D'], // yellow
	            [0.9, '#DF5353'] // red
	        ],
	        lineWidth: 0,
	        minorTickInterval: null,
	        tickAmount: 2,
	        title: {
	            y: -70
	        },
	        labels: {
	            y: 16
	        }
	    },

	    plotOptions: {
	        solidgauge: {
	            dataLabels: {
	                y: 5,
	                borderWidth: 0,
	                useHTML: true
	            }
	        }
	    }
	};

	// The speed gauge
	var chartSpeed = Highcharts.chart('container-speed', Highcharts.merge(gaugeOptions, {
	    yAxis: {
	        min: 200,
	        max: 3000,
	        title: {
	            text: 'Speed'
	        }
	    },

	    credits: {
	        enabled: false
	    },

	    series: [{
	        name: 'Speed',
	        data: [0],
	        dataLabels: {
	            format: '<div style="text-align:center"><span style="font-size:25px;color:' +
	                ((Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black') + '">{y}</span><br/>' +
	                   '<span style="font-size:12px;color:silver">pwm</span></div>'
	        },
	        tooltip: {
	            valueSuffix: 'pwm'
	        }
	    }]

	}));

	// Bring life to the dials
	setInterval(function(){
	    // Speed
	    var point,
	        newVal,
	        inc;
	    	currSpeed = $('#speed').val();

	    if (chartSpeed) {
	        point = chartSpeed.series[0].points[0];
	        inc = Number(currSpeed);
	        newVal = point.y + inc;
	
	        	        
	        point.update(inc);
	    }
	    
	}, 100);
});



