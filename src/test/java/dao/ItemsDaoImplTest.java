package dao;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;

import javax.xml.validation.Validator;

import java.util.Arrays;
import java.util.Collection;

import static org.junit.jupiter.api.Assertions.*;

@RunWith(Parameterized.class)
class ItemsDaoImplTest {


    @Parameterized.Parameters
    @BeforeEach
    void setUp(){

    }
    public static Collection<Object[]> data() {
        return Arrays.asList(new Object[][]{
                {"21",true,"sầu riêng", true,"http://product.hstatic.net/1000398671/product/8ea560d672d54046a0c8a459405179a9_b5fe0130a18046b790948492363eef10_master.jpeg",true,"120.0", true,"sản phẩm tuyệt vời",true},
                {"32",true,"bưởi", true,"https://ordixi.com/wp-content/uploads/2019/10/giay-converse-chuck-taylor-all-star-high-top-multi-color-batman-167304c5.jpg",true,"30.0", true,"sản phẩm tốt",true},





        });
    }
String edit;
    boolean editItems;





    @Test
    void editItems() {
    }

    @Test
    void editItems2() {
    }

    @Test
    void testDeleteItems() {
    }

    @Test
    void uploadImg() {
    }


}