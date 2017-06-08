batchExportConfig1 = function() {
  FusionCharts.batchExport({
    "charts": [{
      "id": "chart-1",
    }, {
      "id": "chart-2",
    }, {
      "id": "chart-3",
    }, {
      "id": "chart-4",
    }],
    "exportFileName": "batchExport",
    "exportFormats": "jpg",
    "exportAtClientSide": "1"
  })
}
FusionCharts.ready(function() {
  var revenueChart = new FusionCharts({
    id: 'chart-1',
    type: 'column2d',
    renderAt: 'chart-container1',
    width: '450',
    height: '300',
    dataFormat: 'json',
    dataSource: {
      "chart": {
        "caption": "Sales report of Apple products",
        "subcaption": "2015",
        "chartTopMargin": "5",
        "subCaptionFontBold": "1",
        "rotatevalues": "0",
        "numberprefix": "$",
        "numbersuffix": "B",
        "yAxisMaxValue": "250",
        "plotToolText": "<div>Revenue : <b>$datavalue</b></div>",
        "theme": "zune"
      },
      "data": [{
        "label": "iPhone",
        "value": "231.22"
      }, {
        "label": "iPad",
        "value": "54.85"
      }, {
        "label": "iPod",
        "value": "20.38"
      }]
    }
  }).render();
  var revenueChart = new FusionCharts({
    id: 'chart-2',
    type: 'column2d',
    renderAt: 'chart-container2',
    width: '450',
    height: '300',
    dataFormat: 'json',
    dataSource: {
      "chart": {
        "subcaption": "2014",
        "chartTopMargin": "2",
        "subCaptionFontBold": "1",
        "rotatevalues": "0",
        "numberprefix": "$",
        "numbersuffix": "B",
        "yAxisMaxValue": "250",
        "plotToolText": "<div>Revenue : <b>$datavalue</b></div>",
        "theme": "zune"
      },
      "data": [{
        "label": "iPhone",
        "value": "169.22"
      }, {
        "label": "iPad",
        "value": "67.99"
      }, {
        "label": "iPod",
        "value": "26.38"
      }]
    }
  }).render();
  var revenueChart3D = new FusionCharts({
    id: 'chart-3',
    type: 'column2d',
    renderAt: 'chart-container3',
    width: '450',
    height: '300',
    dataFormat: 'json',
    dataSource: {
      "chart": {
        "subcaption": "2013",
        "chartTopMargin": "2",
        "subCaptionFontBold": "1",
        "rotatevalues": "0",
        "numberprefix": "$",
        "numbersuffix": "B",
        "yAxisMaxValue": "250",
        "plotToolText": "<div>Revenue : <b>$datavalue</b></div>",
        "theme": "zune"
      },
      "data": [{
        "label": "iPhone",
        "value": "150.26"
      }, {
        "label": "iPad",
        "value": "71.04"
      }, {
        "label": "iPod",
        "value": "35.16"
      }]
    }
  }).render();
  var revenueChart3D = new FusionCharts({
    id: 'chart-4',
    type: 'column2d',
    renderAt: 'chart-container4',
    width: '450',
    height: '300',
    dataFormat: 'json',
    dataSource: {
      "chart": {
        "subcaption": "2012",
        "chartTopMargin": "2",
        "subCaptionFontBold": "1",
        "rotatevalues": "0",
        "numberprefix": "$",
        "numbersuffix": "B",
        "yAxisMaxValue": "250",
        "plotToolText": "<div>Revenue : <b>$datavalue</b></div>",
        "theme": "zune"
      },
      "data": [{
        "label": "iPhone",
        "value": "125.04"
      }, {
        "label": "iPad",
        "value": "58.31"
      }, {
        "label": "iPod",
        "value": "42.63"
      }]
    }
  }).render();
});
