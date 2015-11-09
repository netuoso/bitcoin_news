$(document).ready(function() {
  cryptoTicker();
  setInterval(function() { cryptoTicker(); }, 10000);

  $('[data-behavior=close]').click(function() { $('[data-behavior=content-module]').fadeOut(300); });

  $('[data-behavior=toggle-content-module]').click(function() { 
    var module = $(this).attr('data-attribute');

    if ($('[data-behavior=content-module]').not($('.' + module)).is(':visible')) {
      $('[data-behavior=content-module]').hide();
      $('.' + module).show();
    } else {
      $('.' + module).fadeIn(800);
    }
  });

  $('[data-behavior^=select-').click(function() {
    var newExchange = $(this).attr('data-attribute');
    $('[data-behavior=active-exchange]').attr('data-attribute', newExchange);
    cryptoTicker();
    $('[data-dismiss=modal]').click();
  });
});

function cryptoTicker(exchange) {
  var exchange = $('[data-behavior=active-exchange]').attr('data-attribute');
  if (exchange === 'btce') {
    $('[data-behavior=active-exchange-display]').html('BTC-e');
  } else if (exchange === 'bitstamp') {
    $('[data-behavior=active-exchange-display]').html('Bitstamp');
  }

  $.ajax({
    method: "GET",
    url: "/crypto_ticker?currency=btc&exchange=" + exchange,
  })
    .success(function( msg ) {
      if (exchange === 'btce') {
        $('[data-behavior=btc_usd_ticker_last]').html(Math.round(msg['btc_usd']['last']*100)/100)
        $('[data-behavior=btc_usd_ticker_high]').html(Math.round(msg['btc_usd']['high']*100)/100)
        $('[data-behavior=btc_usd_ticker_low]').html(Math.round(msg['btc_usd']['low']*100)/100)
        $('[data-behavior=btc_usd_ticker_average]').html(Math.round(msg['btc_usd']['avg']*100)/100)        
      } else if (exchange === 'bitstamp') {
        $('[data-behavior=btc_usd_ticker_last]').html(Math.round(msg['last']*100)/100)
        $('[data-behavior=btc_usd_ticker_high]').html(Math.round(msg['high']*100)/100)
        $('[data-behavior=btc_usd_ticker_low]').html(Math.round(msg['low']*100)/100)
        $('[data-behavior=btc_usd_ticker_average]').html(Math.round(msg['vwap']*100)/100)
      }
    });
  $.ajax({
    method: "GET",
    url: "/crypto_ticker?currency=ltc",
  })
    .success(function( msg ) {
      $('[data-behavior=ltc_btc_ticker_last]').html(msg['ltc_btc']['last'])
      $('[data-behavior=ltc_btc_ticker_high]').html(msg['ltc_btc']['high'])
      $('[data-behavior=ltc_btc_ticker_low]').html(msg['ltc_btc']['low'])
      $('[data-behavior=ltc_btc_ticker_average]').html(msg['ltc_btc']['avg'])
    });
}