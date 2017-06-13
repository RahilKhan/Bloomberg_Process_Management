$(function() {

	Morris.Bar({
        element: 'income-expense-owed-chart',
        data: [{
            y: 'Income',
            a: 480000
        }, {
            y: 'Expense',
            a: 238000
        }, {
            y: 'Owed',
            a: 10000
        }],
        xkey: 'y',
        ykeys: ['a'],
        labels: ['December'],
        hideHover: 'auto',
        resize: true
    });
	
	Morris.Bar({
        element: 'morris-bar-chart',
        data: [{
            y: 'Apr',
            a: 20000
        }, {
            y: 'May',
            a: 25000
        }, {
            y: 'Jun',
            a: 70000
        }, {
            y: 'Jul',
            a: 72000
        }, {
            y: 'Aug',
            a: 72000
        }, {
            y: 'Sep',
            a: 45000
        }, {
            y: 'Oct',
            a: 60000
        }, {
            y: 'Nov',
            a: 65000
        }, {
            y: 'Dec',
            a: 70000
        }],
        xkey: 'y',
        ykeys: ['a'],
        labels: ['Savings'],
        hideHover: 'auto',
        resize: true
    });
	
	Morris.Area({
        element: 'morris-area-chart',
        data: [{
            period: '2010 Q1',
            iphone: 2666,
            ipad: null,
            itouch: 2647
        }, {
            period: '2010 Q2',
            iphone: 2778,
            ipad: 2294,
            itouch: 2441
        }, {
            period: '2010 Q3',
            iphone: 4912,
            ipad: 1969,
            itouch: 2501
        }, {
            period: '2010 Q4',
            iphone: 3767,
            ipad: 3597,
            itouch: 5689
        }, {
            period: '2011 Q1',
            iphone: 6810,
            ipad: 1914,
            itouch: 2293
        }, {
            period: '2011 Q2',
            iphone: 5670,
            ipad: 4293,
            itouch: 1881
        }, {
            period: '2011 Q3',
            iphone: 4820,
            ipad: 3795,
            itouch: 1588
        }, {
            period: '2011 Q4',
            iphone: 15073,
            ipad: 5967,
            itouch: 5175
        }, {
            period: '2012 Q1',
            iphone: 10687,
            ipad: 4460,
            itouch: 2028
        }, {
            period: '2012 Q2',
            iphone: 8432,
            ipad: 5713,
            itouch: 1791
        }],
        xkey: 'period',
        ykeys: ['iphone', 'ipad', 'itouch'],
        labels: ['iPhone', 'iPad', 'iPod Touch'],
        pointSize: 2,
        hideHover: 'auto',
        resize: true
    });
});
