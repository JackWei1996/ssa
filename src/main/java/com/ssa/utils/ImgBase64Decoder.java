package com.ssa.utils;

import sun.misc.BASE64Decoder;

import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.UUID;

public class ImgBase64Decoder {

    /**
     * Base64解码为图片写入流
     * @param imgDatas
     * @return
     */
    public static  String photo( String imgDatas) {

        String bs = "data:image/png;base64,";
        String base = imgDatas.replace(bs, "");
        BASE64Decoder decoder = new BASE64Decoder();
        String imgFilePath=null;
        String name = UUID.randomUUID()+"";
        try {
            //解码
            byte[] b = decoder.decodeBuffer(base);
            for (int i = 0; i < b.length; ++i) {
                //调整异常数据
                if (b[i] < 0) {
                    b[i] += 256;
                }
            }

            imgFilePath = "D:\\upload\\" + name + ".png";
            OutputStream out = new FileOutputStream(imgFilePath);
            out.write(b);
            out.flush();
            out.close();

        } catch (Exception e) {
            return "error";
        }
        return name;
    }
}
