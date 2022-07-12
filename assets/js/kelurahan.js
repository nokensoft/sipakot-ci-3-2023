
function distrik(){
    var data = document.getElementById("usaha_distrik").value;
    if(data == '')
    {
        document.getElementById("usaha_kelurahan").innerHTML=`
        <option disabled value=""></option>
    `;
    }
    if(data == 'abepura')
    {
        document.getElementById("usaha_kelurahan").innerHTML=`
                                    <option value=""></option>
                                    <option value="asano">Asano</option>
                                    <option value="awiyo">Awiyo</option>
                                    <option value="kotabaru">Kota Baru</option>
                                    <option value="yobe">Yobe</option>
                                    <option value="abepantai">Abe Pantai</option>
                                    <option value="vim">Vim</option>
                                    <option value="whymhorock">Why Mhorock</option>
                                    <option value="wahno">Wahno</option>
    `;
    }
    if(data == 'heram')
    {
        document.getElementById("usaha_kelurahan").innerHTML=`
                                    <option value=""></option>
                                    <option value="waena">Waena</option>
                                    <option value="yabansai">Yabansai</option>
                                    <option value="hedam">Hedam</option>
                                      `;
    }
    if(data == 'jprutara')
    {
        document.getElementById("usaha_kelurahan").innerHTML=`
                                    <option value=""></option>
                                    <option value="gurabesi">Gurabesi</option>
                                    <option value="mandala">Mandala</option>
                                    <option value="bhayangkara">Bhayangkara</option>
                                    <option value="trikora">Trikora</option>
                                    <option value="angkasapura">Angkasapura</option>
                                    <option value="imbi">Imbi</option>
                                    <option value="tanjungria">Tanjung Ria</option>
                                      `;
    }
    if(data == 'jprselatan')
    {
        document.getElementById("usaha_kelurahan").innerHTML=`
                                    <option value=""></option>
                                    <option value="entrop">Entrop</option>
                                    <option value="hamadi">Hamadi</option>
                                    <option value="ardipura">Ardipura</option>
                                    <option value="numbay">Numbay</option>
                                    <option value="argapura">Argapura </option>
                                      `;
    }
    if(data == 'muaratami')
    {
        document.getElementById("usaha_kelurahan").innerHTML=`
                                    <option value=""></option>
                                    <option value="koyabarat">Koya barat</option>
                                    <option value="koyatimur">Koya timur</option>
                                      `;
    }
 
}