package com.llvillar.springboot.app1.utils;

import java.util.Base64;

public class ImageUtil {


    public static String getImgData(byte[] byteData) {

        if (byteData != null) {
            return Base64.getMimeEncoder().encodeToString(byteData);
        } else
            return null;

    }
}
