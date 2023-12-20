 function populateDistricts() {
    var citySelect = document.getElementById("city");
    var districtSelect = document.getElementById("district");
    var selectedCity = citySelect.value;

    // Xóa tất cả các option trong dropdown quận/huyện trước khi thêm mới
    while (districtSelect.options.length > 0) {
    districtSelect.remove(0);
}

    // Thêm option mới tương ứng với thành phố được chọn
    if (selectedCity === "angiang") {
    addOption(districtSelect, "angiang1", "Thành phố Long Xuyên");
    addOption(districtSelect, "angiang2", "Thành phố Châu Đốc");
    addOption(districtSelect, "angiang3", "Huyện An Phú");
    addOption(districtSelect, "angiang4", "Thị Xã Tân Châu");
    addOption(districtSelect, "angiang5", "Huyện Phú Tân");
    addOption(districtSelect, "angiang6", "Huyện Tịnh Biên");
    addOption(districtSelect, "angiang7", "Huyện Tri Tôn");
    addOption(districtSelect, "angiang8", "Huyện Châu Phú");
    addOption(districtSelect, "angiang9", "Huyện Chợ Mới");
    addOption(districtSelect, "angiang10", "Huyện Châu Thành");
    addOption(districtSelect, "angiang11", "Huyện Thoại Sơn");

    // Thêm các quận/huyện khác của Hà Nội
} else if (selectedCity === "vungtau") {
    addOption(districtSelect, "vungtau1", "Thành phố Vũng Tàu");
    addOption(districtSelect, "vungtau2", "Thành phố Bà Rịa");
    addOption(districtSelect, "vungtau3", "Huyện Xuyên Mộc");
    addOption(districtSelect, "vungtau4", "Huyện Long Điền");
    addOption(districtSelect, "vungtau5", "Thị Xã Phú Mỹ");
    addOption(districtSelect, "vungtau6", "Huyện Châu Đức");
    addOption(districtSelect, "vungtau7", "Huyện Đất Đỏ");
    addOption(districtSelect, "vungtau8", "Huyện đảo Côn Đảo");


}else if (selectedCity == "bacgiang"){
    addOption(districtSelect,"bacgiang1","Thành Phố Bắc Giang");
    addOption(districtSelect,"bacgiang2","Huyện Yên Thế");
    addOption(districtSelect,"bacgiang3","Huyện Lục Ngạn");
    addOption(districtSelect,"bacgiang4","Huyện Sơn Động");
    addOption(districtSelect,"bacgiang5","Huyện Lục Nam");
    addOption(districtSelect,"bacgiang6","Huyện Tân Yên");
    addOption(districtSelect,"bacgiang7","Huyện Hiệp Hòa");
    addOption(districtSelect,"bacgiang8","Huyện Lạng Giang");
    addOption(districtSelect,"bacgiang9","Huyện Việt Yên");
    addOption(districtSelect,"bacgiang10","Huyện Yên Dũng");

}else if(selectedCity == "backan"){
    addOption(districtSelect,"backan1","Thành phố Bắc Kạn");
    addOption(districtSelect,"backan2","Huyện Chợ Đồn");
    addOption(districtSelect,"backan3","Huyện Bạch Thông");
    addOption(districtSelect,"backan4","Huyện Na Rì");
    addOption(districtSelect,"backan5","Huyện Ngân Sơn");
    addOption(districtSelect,"backan6","Huyện Ba Bể");
    addOption(districtSelect,"backan7","Huyện Chợ Mới");
    addOption(districtSelect,"backan8","Huyện Pác Nặm");

} else if(selectedCity == "baclieu"){
    addOption(districtSelect,"baclieu1","Thành Phố Bạc Liêu");
    addOption(districtSelect,"baclieu2","Huyện Vĩnh Lợi");
    addOption(districtSelect,"baclieu3","Huyện Hồng Dân");
    addOption(districtSelect,"baclieu4","Thị Xã Giá Rai");
    addOption(districtSelect,"baclieu5","Huyện Phước Long");
    addOption(districtSelect,"baclieu6","Huyện Đông Hải");
    addOption(districtSelect,"baclieu7","Huyện Hòa Bình");

}else if(selectedCity == "bacninh"){
    addOption(districtSelect, "bacninh1","Thành Phố Bắc Ninh");
    addOption(districtSelect, "bacninh2","Huyện Yên Phong");
    addOption(districtSelect, "bacninh3","Huyện Quế Võ");
    addOption(districtSelect, "bacninh4","Huyện Tiên Du");
    addOption(districtSelect, "bacninh5","Thị xã Từ Sơn");
    addOption(districtSelect, "bacninh6","Huyện Thuận Thành");
    addOption(districtSelect, "bacninh7","Huyện Gia Bình");
    addOption(districtSelect, "bacninh8","Huyện Lương Tài");

}else if(selectedCity == "bentre"){
    addOption(districtSelect,"bentre1","Thành phố Bến Tre");
    addOption(districtSelect,"bentre2","Huyện Châu Thành");
    addOption(districtSelect,"bentre3","Huyện Chợ Lách");
    addOption(districtSelect,"bentre4","Huyện Mỏ Cày Bắc");
    addOption(districtSelect,"bentre5","Huyện Giồng Trôm");
    addOption(districtSelect,"bentre6","Huyện Bình Đại");
    addOption(districtSelect,"bentre7","Huyện Ba tri");

}else if(selectedCity == "binhdinh"){
    addOption(districtSelect,"binhdinh1","Thành Phố Quy Nhơn");
    addOption(districtSelect,"binhdinh2","Huyện An Lão");
    addOption(districtSelect,"binhdinh3","Huyện Hoài Ân");
    addOption(districtSelect,"binhdinh4","Thị xã Hoài Nhơn");
    addOption(districtSelect,"binhdinh5","Huyện Phú Mỹ");
    addOption(districtSelect,"binhdinh6","Huyện Phù Cát");
    addOption(districtSelect,"binhdinh7","Huyện Vĩnh Thạnh");
    addOption(districtSelect,"binhdinh8","Huyện Tây Sơn");
    addOption(districtSelect,"binhdinh9","Huyện Vân Canh");
    addOption(districtSelect,"binhdinh10","Thị xã An Nhơn");
    addOption(districtSelect,"binhdinh11","Huyện Tuy Phước");

}else if(selectedCity == "binhduong"){
    addOption(districtSelect,"binhduong1","Thành phố Thủ Dầu Một");
    addOption(districtSelect,"binhduong2","Thị xã Bến Cát");
    addOption(districtSelect,"binhduong3","Thị xã Tân Uyên");
    addOption(districtSelect,"binhduong4","Thành phố Thuận An");
    addOption(districtSelect,"binhduong5","Thành phố Dĩ An");
    addOption(districtSelect,"binhduong6","Huyện Phú Giáo");
    addOption(districtSelect,"binhduong7","Huyện Dầu Tiếng");
    addOption(districtSelect,"binhduong8","Huyện Bàu Bàng");
    addOption(districtSelect,"binhduong9","Huyện Bắc Tân Uyên");

}else if(selectedCity == "binhphuoc"){
    addOption(districtSelect, "binhphuoc1","Thành phố Đồng Xoài");
    addOption(districtSelect, "binhphuoc2","Huyện Đồng Phú");
    addOption(districtSelect, "binhphuoc3","Huyện Chơn Thành");
    addOption(districtSelect, "binhphuoc4","Thị xã Bình Long");
    addOption(districtSelect, "binhphuoc5","Huyện Lộc Ninh");
    addOption(districtSelect, "binhphuoc6","Huyện Bù Đốp");
    addOption(districtSelect, "binhphuoc7","Thị xã Phước Long");
    addOption(districtSelect, "binhphuoc8","Huyện Bù Đăng");
    addOption(districtSelect, "binhphuoc9","Huyện Hớn Quản");
    addOption(districtSelect, "binhphuoc10","Huyện Bù Gia Mập");
    addOption(districtSelect, "binhphuoc11","Huyện Phú Riềng");

}else if(selectedCity == "binhthuan"){
    addOption(districtSelect,"binhthuan1","Thành phố Phan Thiêt");
    addOption(districtSelect,"binhthuan2","Huyện Tuy Phong");
    addOption(districtSelect,"binhthuan3","Huyện Bắc Bình");
    addOption(districtSelect,"binhthuan4","Huyện Hàm Thuận Bắc");
    addOption(districtSelect,"binhthuan5","Huyện Hàm Thuận Nam");
    addOption(districtSelect,"binhthuan6","Huyện Hàm Tân");
    addOption(districtSelect,"binhthuan7","Huyện Đức Linh");
    addOption(districtSelect,"binhthuan8","Huyện Tánh Linh");
    addOption(districtSelect,"binhthuan9","Huyện đảo Phú Qúy");
    addOption(districtSelect,"binhthuan10","Thị xã La Gi");

}else if(selectedCity == "camau"){
    addOption(districtSelect,"camau1","Thành phố Cà Mau");
    addOption(districtSelect,"camau2","Huyện Thới Bình");
    addOption(districtSelect,"camau3","Huyện U Minh");
    addOption(districtSelect,"camau4","Huyện Trần Văn Thời");
    addOption(districtSelect,"camau5","Huyện Cái Nước");
    addOption(districtSelect,"camau6","Huyện Đầm Dơi");
    addOption(districtSelect,"camau7","Huyện Ngọc Hiển");
    addOption(districtSelect,"camau8","Huyện Năm Căn");
    addOption(districtSelect,"camau9","Huyện Phú Tân");

}else if(selectedCity == "cantho"){
    addOption(districtSelect, "cantho1","Quận Ninh Kiều");
    addOption(districtSelect, "cantho2","Quận Bình Thủy");
    addOption(districtSelect, "cantho3","Quận Cái Răng");
    addOption(districtSelect, "cantho4","Quận Ô Môn");
    addOption(districtSelect, "cantho5","Huyện Phong Điền");
    addOption(districtSelect, "cantho6","Huyện Cờ Đỏ");
    addOption(districtSelect, "cantho7","Huyện Vĩnh Thạnh");
    addOption(districtSelect, "cantho8","Quận Thốt Nốt");
    addOption(districtSelect, "cantho9","Huyện Thới Lai");

}else if(selectedCity == "caobang"){
    addOption(districtSelect,"caobang1","Thành phố Cao Bằng");
    addOption(districtSelect,"caobang2","Huyện Bảo Lạc");
    addOption(districtSelect,"caobang3","Huyện Thông Nông");
    addOption(districtSelect,"caobang4","Huyện Hà Quảng");
    addOption(districtSelect,"caobang5","Huyện Trà Lĩnh");
    addOption(districtSelect,"caobang6","Huyện Trùng Khánh");
    addOption(districtSelect,"caobang7","Huyện Nguyên Bình");
    addOption(districtSelect,"caobang8","Huyện Hòa An");
    addOption(districtSelect,"caobang9","Huyện Quảng Uyên");
    addOption(districtSelect,"caobang10","Huyện Thạch An");
    addOption(districtSelect,"caobang11","Huyện Hạ Lang");
    addOption(districtSelect,"caobang12","Huyện Bảo Lâm");
    addOption(districtSelect,"caobang13","Huyện Phục Hòa");
    addOption(districtSelect,"caobang14","Huyện Quảng Hòa");

}else if(selectedCity == "danang"){
    addOption(districtSelect,"danang1","Quận Hải Châu");
    addOption(districtSelect,"danang2","Quận Thanh Khê");
    addOption(districtSelect,"danang3","Quận Sơn Trà");
    addOption(districtSelect,"danang4","Quận Ngũ Hành Sơn");
    addOption(districtSelect,"danang5","Quận Liên Chiểu");
    addOption(districtSelect,"danang6","Huyện Hòa Vang");
    addOption(districtSelect,"danang7","Quận Cẩm Lệ");
    addOption(districtSelect,"danang8","Huyện đảo Hoàng Sa");

}else if(selectedCity == "daklak"){
    addOption(districtSelect, "daklak1","Thành phố Buôn Ma Thuật");
    addOption(districtSelect, "daklak2","Huyện Ea H leo");
    addOption(districtSelect, "daklak3","Huyện Krông Búk");
    addOption(districtSelect, "daklak4","Huyện Krông Năng");
    addOption(districtSelect, "daklak5","Huyện Ea Súp");
    addOption(districtSelect, "daklak6","Huyện Cư M gar");
    addOption(districtSelect, "daklak7","Huyện Krông Pắc");
    addOption(districtSelect, "daklak8","Huyện Ea Kar");
    addOption(districtSelect, "daklak9","Huyện M Đrắk");
    addOption(districtSelect, "daklak10","Huyện Krông Ana");
    addOption(districtSelect, "daklak11","Huyện Krông Bông");
    addOption(districtSelect, "daklak12","Huyện Lắk");
    addOption(districtSelect, "daklak13","Huyện Buôn Đôn");
    addOption(districtSelect, "daklak14","Huyện Cư Kuin");
    addOption(districtSelect, "daklak15","Thị xã Buôn Hồ");

}else if(selectedCity=="daknong"){
    addOption(districtSelect,"daknong1","Thành phố Gia Nghĩa");
    addOption(districtSelect,"daknong2","Huyện Đắk R lấp");
    addOption(districtSelect,"daknong3","Huyện Đắk Mil");
    addOption(districtSelect,"daknong4","Huyện Cư Jút");
    addOption(districtSelect,"daknong5","Huyện Đắk Song");
    addOption(districtSelect,"daknong6","Huyện Krông Nô");
    addOption(districtSelect,"daknong7","Huyện Đắk Glong");
    addOption(districtSelect,"daknong8","Huyện Tuy Đức");

}else if(selectedCity=="dienbien"){
    addOption(districtSelect,"dienbien1","Thành Phố Điện Biên Phủ");
    addOption(districtSelect,"dienbien2","Thị xã Mường Lay");
    addOption(districtSelect,"dienbien3","Huyện Điện Biên");
    addOption(districtSelect,"dienbien4","Huyên Tuần Giáo");
    addOption(districtSelect,"dienbien5","Huyện Mường Chà");
    addOption(districtSelect,"dienbien6","Huyện Tủa Chùa");
    addOption(districtSelect,"dienbien7","Huyện Điện Biên Đông");
    addOption(districtSelect,"dienbien8","Huyện Mường Nhé");
    addOption(districtSelect,"dienbien9","Huyện Mường Ảng");
    addOption(districtSelect,"dienbien10","Huyện Nậm Pồ");

}else if( selectedCity=="dongnai") {
    addOption(districtSelect,"dongnai1","Thành phố Biên Hòa");
    addOption(districtSelect,"dongnai2","Huyện Vĩnh Cửu");
    addOption(districtSelect,"dongnai3","Huyện Tân Phú");
    addOption(districtSelect,"dongnai4","Huyện Định Quán");
    addOption(districtSelect,"dongnai5","Huyện Thống Nhất");
    addOption(districtSelect,"dongnai6","Thành phố Long Khánh");
    addOption(districtSelect,"dongnai7","Huyện Xuân Lô");
    addOption(districtSelect,"dongnai8","Huyện Long Thành");
    addOption(districtSelect,"dongnai9","Huyện Nhơn Trạch");
    addOption(districtSelect,"dongnai10","Huyện Trảng Bom");
    addOption(districtSelect,"dongnai11","Huyện Cẩm Mỹ");

}else if(selectedCity=="dongthap"){
    addOption(districtSelect, "dongthap1","Thành phố Cao Lãnh");
    addOption(districtSelect, "dongthap2","Thành phố Sa Đéc");
    addOption(districtSelect, "dongthap3","Thành phố Hồng Ngự");
    addOption(districtSelect, "dongthap4","Huyện Tam Nông");
    addOption(districtSelect, "dongthap5","Huyện Thanh Bình");
    addOption(districtSelect, "dongthap6","Huyện Cao Lãnh");
    addOption(districtSelect, "dongthap7","Huyện Lấp Vò");
    addOption(districtSelect, "dongthap8","Huyện Tháp Mười");
    addOption(districtSelect, "dongthap9","Huyện Lai Vung");
    addOption(districtSelect, "dongthap10","Huyện Châu Thành");
    addOption(districtSelect, "dongthap11","Thị xã Hồng Ngự");

}else if(selectedCity == "gialai"){
    addOption(districtSelect,"gialai1","Thành phố Pleiku");
    addOption(districtSelect,"gialai2","Huyện Chư Păh");
    addOption(districtSelect,"gialai3","Huyện Mang Yang");
    addOption(districtSelect,"gialai4","Huyện Kbang");
    addOption(districtSelect,"gialai5","Thị xã An Khê");
    addOption(districtSelect,"gialai6","Huyện Kông Chro");
    addOption(districtSelect,"gialai7","Huyện Đức Cơ");
    addOption(districtSelect,"gialai8","Huyện Chư Prông");
    addOption(districtSelect,"gialai9","Huyện Chư Sê");
    addOption(districtSelect,"gialai10","Thị xã Ayun Pa");
    addOption(districtSelect,"gialai11","Huyện Krông Pa");
    addOption(districtSelect,"gialai12","Huyện Ia Grai");
    addOption(districtSelect,"gialai13","Huyện Đắk Đoa");
    addOption(districtSelect,"gialai14","Huyện Ia Pa");
    addOption(districtSelect,"gialai15","Huyện Đắk Pơ");
    addOption(districtSelect,"gialai16","Huyện Phú Thiện");
    addOption(districtSelect,"gialai17","Huyện Chư Pưh");

}else if(selectedCity == "hagiang"){
        addOption(districtSelect, "hagiang1","Thành phố Hà Giang");
        addOption(districtSelect, "hagiang2","Huyện Đồng Văn");
        addOption(districtSelect, "hagiang3","Huyện Mèo Vạc");
        addOption(districtSelect, "hagiang4","Huyện Yên Minh");
        addOption(districtSelect, "hagiang5","Huyện Quản Bạ");
        addOption(districtSelect, "hagiang6","Huyện Vị Xuyên");
        addOption(districtSelect, "hagiang7","Huyện Bắc Mê");
        addOption(districtSelect, "hagiang8","Huyện Hoàng Su Phi");
        addOption(districtSelect, "hagiang9","Huyện Xín Mần");
        addOption(districtSelect, "hagiang10","Huyện Bắc Quang");
        addOption(districtSelect, "hagiang11","Huyện Quang Bình");

    }else if(selectedCity== "hanam"){
        addOption(districtSelect, "hanam1","Thành phố Phủ Lý");
        addOption(districtSelect, "hanam2","Thị xã Duy Tiên");
        addOption(districtSelect, "hanam3","Huện Kim Bảng");
        addOption(districtSelect, "hanam4","Huyện Lý Nhân");
        addOption(districtSelect, "hanam5","Huyện Thanh Liêm");
        addOption(districtSelect, "hanam6","Huyện Bình Lục");

    }else if(selectedCity=="hanoi"){
        addOption(districtSelect, "hanoi1","Quận Bắc Từ Liêm");
        addOption(districtSelect, "hanoi2","Quận Nam Từ Liêm");
        addOption(districtSelect, "hanoi3","Quận Ba Đình");
        addOption(districtSelect, "hanoi4","Quận Hoàn Kiếm");
        addOption(districtSelect, "hanoi5","Quận Hai Bà Trưng");
        addOption(districtSelect, "hanoi6","Quận Đống Đa");
        addOption(districtSelect, "hanoi7","Quận Tây Hồ");
        addOption(districtSelect, "hanoi8","Quận Cầu Giấy");
        addOption(districtSelect, "hanoi9","Quận Thanh Xuân");
        addOption(districtSelect, "hanoi10","Quận Hoàng Mai");
        addOption(districtSelect, "hanoi11","Quận Long Biên");
        addOption(districtSelect, "hanoi12","Huyện Thạnh Trị");
        addOption(districtSelect, "hanoi13","Huyện Gia Lâm");
        addOption(districtSelect, "hanoi14","Huyện Đông Anh");
        addOption(districtSelect, "hanoi15","Huyện Sóc Sơn");
        addOption(districtSelect, "hanoi16","Quận Hà Đông");
        addOption(districtSelect, "hanoi17","Thị xã Sơn Tây");
        addOption(districtSelect, "hanoi18","Huyện Bà Vì");
        addOption(districtSelect, "hanoi19","Huyện Phúc Thọ");
        addOption(districtSelect, "hanoi20","Huyện Thạch Thất");
        addOption(districtSelect, "hanoi21","Huyện Quốc Oai");
        addOption(districtSelect, "hanoi22","Huyện Chương Mỹ");
        addOption(districtSelect, "hanoi23","Huyện Đan Phượng");
        addOption(districtSelect, "hanoi24","Huyện Hoài Đức");
        addOption(districtSelect, "hanoi25","Huyện Thanh Oai");
        addOption(districtSelect, "hanoi26","Huyện Mỹ Đức");
        addOption(districtSelect, "hanoi27","Huyện Ứng Hòa");
        addOption(districtSelect, "hanoi28","Huyện Thường Tín");
        addOption(districtSelect, "hanoi29","Huyện Phú Xuyên");
        addOption(districtSelect, "hanoi30","Huyện Mê Linh");

    }else if(selectedCity== "hatinh"){
        addOption(districtSelect,"hatinh1","Thành phố Hà Tĩnh");
        addOption(districtSelect,"hatinh2","Thị xã Hồng Lĩnh");
        addOption(districtSelect,"hatinh3","Huyện Hương Sơn");
        addOption(districtSelect,"hatinh4","Huyện Đức Thọ");
        addOption(districtSelect,"hatinh5","Huyện Nghi Xuân");
        addOption(districtSelect,"hatinh6","Huyện Can Lộc");
        addOption(districtSelect,"hatinh7","Huyện Hương Khê");
        addOption(districtSelect,"hatinh8","Huyện Thạch Hà");
        addOption(districtSelect,"hatinh9","Huyện Cẩm Xuyên");
        addOption(districtSelect,"hatinh10","Huyện Vũ Quang");
        addOption(districtSelect,"hatinh11","Huyện Lộc Hà");
        addOption(districtSelect,"hatinh12","Huyện Kỳ Anh");
        addOption(districtSelect,"hatinh13","Thị xã Kỳ Anh");

    }else if(selectedCity=="haiduong"){
        addOption(districtSelect,"haiduong1","Thành phố Hải Dương");
        addOption(districtSelect,"haiduong2","Thành phố Chí Linh");
        addOption(districtSelect,"haiduong3","Huyện Nam Sách");
        addOption(districtSelect,"haiduong4","Thị xã Kinh Môn");
        addOption(districtSelect,"haiduong5","Huyện Gia Lộc");
        addOption(districtSelect,"haiduong6","Huyện Tứ kỳ");
        addOption(districtSelect,"haiduong7","Huyện Thanh Miện");
        addOption(districtSelect,"haiduong8","Huyện Ninh Giang");
        addOption(districtSelect,"haiduong9","Huyện Cẩm Giàng");
        addOption(districtSelect,"haiduong10","Huyện Thanh Hà");
        addOption(districtSelect,"haiduong11","Huyện Kim Thành");
        addOption(districtSelect,"haiduong12","Huyện Bình Giang");

    }else if(selectedCity=="haiphong"){
        addOption(districtSelect, "haiphong1","Huyện An Lão");
        addOption(districtSelect, "haiphong2","Quận Hồng Bàng");
        addOption(districtSelect, "haiphong3","Quận Lê Chân");
        addOption(districtSelect, "haiphong4","Quận Ngô Quyền");
        addOption(districtSelect, "haiphong5","Quận Kiến An");
        addOption(districtSelect, "haiphong6","Quận Hải An");
        addOption(districtSelect, "haiphong7","Quận Đồ Sơn");
        addOption(districtSelect, "haiphong8","Huyện Kiến Thụy");
        addOption(districtSelect, "haiphong9","Huyện Thủy Nguyên");
        addOption(districtSelect, "haiphong10","Huyện An Dương");
        addOption(districtSelect, "haiphong11","Huyện Tiên Lãng");
        addOption(districtSelect, "haiphong12","Huyễn Vĩnh Bảo");
        addOption(districtSelect, "haiphong13","Huyện đảo Cát Hải");
        addOption(districtSelect, "haiphong14","Quận Dương Kinh");

    }else if(selectedCity=="haugiang"){
        addOption(districtSelect,"haugiang1","Thành phố Vị Thanh");
        addOption(districtSelect,"haugiang2","Huyện Vị Thủy");
        addOption(districtSelect,"haugiang3","Huyện Long Mỹ");
        addOption(districtSelect,"haugiang4","Huyện Phụng Hiệp");
        addOption(districtSelect,"haugiang5","Huyện Châu Thành");
        addOption(districtSelect,"haugiang6","Huyện Châu Thành A");
        addOption(districtSelect,"haugiang7","Thành phố Ngã Bảy");
        addOption(districtSelect,"haugiang8","Thị xã Long Mỹ");

    }else if(selectedCity=="hochiminh"){
        addOption(districtSelect,"hochiminh1","Thành Phố Thủ Đức");
        addOption(districtSelect,"hochiminh2","Quận 1");
        addOption(districtSelect,"hochiminh3","Quận 2");
        addOption(districtSelect,"hochiminh4","Quận 3");
        addOption(districtSelect,"hochiminh5","Quận 4");
        addOption(districtSelect,"hochiminh6","Quận 5");
        addOption(districtSelect,"hochiminh7","Quận 6");
        addOption(districtSelect,"hochiminh8","Quận 7");
        addOption(districtSelect,"hochiminh9","Quận 8");
        addOption(districtSelect,"hochiminh10","Quận 9");
        addOption(districtSelect,"hochiminh11","Quận 10");
        addOption(districtSelect,"hochiminh12","Quận 11");
        addOption(districtSelect,"hochiminh13","Quận 12");
        addOption(districtSelect,"hochiminh14","Quận Gò Vấp");
        addOption(districtSelect,"hochiminh15","Quận Tân Bình");
        addOption(districtSelect,"hochiminh16","Quận Tân Phú");
        addOption(districtSelect,"hochiminh17","Quận Bình Thạnh");
        addOption(districtSelect,"hochiminh18","Quận Phú Nhuận");
        addOption(districtSelect,"hochiminh19","Quận Thử Đức");
        addOption(districtSelect,"hochiminh20","Quận Bình Tân");
        addOption(districtSelect,"hochiminh21","Huyện Bình Chánh");
        addOption(districtSelect,"hochiminh22","Huyện Cử Chi");
        addOption(districtSelect,"hochiminh23","Huyện Hóc Môn");
        addOption(districtSelect,"hochiminh24","Huyện Nhà Bè");
        addOption(districtSelect,"hochiminh25","Huyền Cần Giờ");

    }else if(selectedCity=="hoabinh"){
        addOption(districtSelect,"hoabinh1","Thành phố Hòa Bình");
        addOption(districtSelect,"hoabinh2","Quận");
        addOption(districtSelect,"hoabinh3","");
        addOption(districtSelect,"hoabinh4","");
        addOption(districtSelect,"hoabinh5","");
        addOption(districtSelect,"hoabinh6","");
        addOption(districtSelect,"hoabinh7","");
        addOption(districtSelect,"hoabinh8","");
        addOption(districtSelect,"hoabinh9","");
        addOption(districtSelect,"hoabinh10","");
        addOption(districtSelect,"hoabinh11","");

    }


    // Thêm các điều kiện khác tương ứng với các thành phố khác

}

    function addOption(select, value, text) {
    var option = document.createElement("option");
    option.value = value;
    option.text = text;
    select.add(option);
}
