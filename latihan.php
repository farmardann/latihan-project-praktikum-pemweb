<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Pemesanan Produk</title>
    <style>
      * {
        box-sizing: border-box;
      }
      body {
        background-color: #f1f6fa;
        font-family: Arial, sans-serif;
      }
      h1 {
        margin-bottom: 30px;
      }
      .container {
        display: flex;
        flex-direction: column;
        background-color: white;
        width: 35%;
        margin: 40px auto;
        padding: 20px;
        justify-content: center;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
      }
      .input {
        display: flex;
        flex-direction: column;
        margin: 10px 0;
      }
      label {
        margin-bottom: 5px;
      }
      input {
        width: 100%;
        padding: 8px;
      }
      .button {
        width: 100%;
        margin: 10px 0;
        padding: 10px;
        background: #3498db;
        border-radius: 5px;
        cursor: pointer;
        border: none;
        color: white;
        font-weight: bold;
      }
      .button:hover {
        background-color: #2980b9;
      }
      #hasil {
        margin-top: 15px;
        background: #ecf0f1;
        padding: 10px;
        border-radius: 5px;
      }
    </style>
  </head>

  <body>
    <center>
      <h1>Form Pemesanan Produk</h1>
      <div class="container">
        <form action="" method="POST">
          <div class="input">
            <label for="produk">Nama Produk</label>
            <input type="text" name="produk" id="produk" />
          </div>

          <div class="input">
            <label for="jumlah">Jumlah</label>
            <input type="number" name="jumlah" id="jumlah" />
          </div>

          <div class="input">
            <label for="harga">Harga Satuan (Rp)</label>
            <input type="number" name="harga" id="harga" />
          </div>

          <input
            type="submit"
            class="button"
            name="btn_proses"
            value="Hitung Total"
          />
          <input type="reset" class="button" value="Hapus" />

          <div id="hasil">
            <?php 
              // Lihat di depan
            ?>
          </div>
        </form>
      </div>
    </center>
  </body>
</html>
