function proses() {
  let produk = document.getElementById("produk").value;
  let jumlah = parseInt(document.getElementById("jumlah").value);
  let harga = parseInt(document.getElementById("harga").value);
  let hasil = document.getElementById("hasil");

  if (!produk || jumlah <= 0 || harga <= 0) {
    alert("Isi semua data dengan benar!");
    return;
  }

  let total = jumlah * harga;
  hasil.innerHTML = `
        <b>Rincian Pesanan:</b><br>
        Produk: ${produk}<br>
        Jumlah: ${jumlah}<br>
        Total Harga: Rp${total.toLocaleString("id-ID")}
      `;
}

function hapus() {
  document.getElementById("produk").value = "";
  document.getElementById("jumlah").value = "";
  document.getElementById("harga").value = "";
  document.getElementById("hasil").innerHTML = "";
}
