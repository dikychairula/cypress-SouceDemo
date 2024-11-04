Feature: Checkout
    
    Scenario : User melakukan Checkout
        Given User berhasil login
        When User menambahkan chart
        And User klik keranjang
        And User menambahkan qty produk
        And User klik tombol checkout
        And User mengisi first_name
        And User mengisi last_nama
        And User mengisi Zip Code
        And User klik Sumbit
        Then User klik Finish

    