//Load du lieu tu db len
package products;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utils.DBUtils;

/**
 *
 * @author phamv
 */
public class ProductDAO {
//     Connection conn = null;
//    PreparedStatement ptm = null;
//    ResultSet rs = null;
//    
//    public List<ProductDTO> getAllProduct(){
//        List<ProductDTO> list = new ArrayList<>();
//        String query ="SELECT * FROM SANPHAM";
//        try{
//            conn = DBUtils.getConnection();
//            ptm = conn.prepareStatement(query);
//            rs = ptm.executeQuery();
//            while(rs.next()){
//                list.add(new ProductDTO(rs.getString(1), 
//                        rs.getString(2), 
//                        rs.getDouble(3), 
//                        rs.getInt(4), 
//                        rs.getString(5), 
//                        rs.getString(6), 
//                        rs.getInt(7), 
//                        rs.getInt(8)));
//            }
//        }catch (Exception e){
//        }
//        return list;
//    }
//    public static void main(String[] args){
//        ProductDAO productdao = new ProductDAO();
//        List<ProductDTO> list = productdao.getAllProduct();
//        for(ProductDTO o: list){
//            System.out.println(o);
//        }
//    }

    public static final String GETALL = "SELECT * FROM SANPHAM";
//    public static final String GETALL = "SELECT * FROM SANPHAM";
    public List<ProductDTO> getAllProduct() throws SQLException {
        List<ProductDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GETALL);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String productID = rs.getString("MA_SP");
                    String productName = rs.getString("TEN_SP");
                    double price = rs.getDouble("GIABAN");
                    int quantity = rs.getInt("SOLUONG");
                    String importDate = rs.getString("NGAY_THEMSP");
                    String image = rs.getString("HINHANH_SP");
                    int status = rs.getInt("TINHTRANG");
                    list.add(new ProductDTO(productID, productName, price, quantity, importDate, image, status, 0));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }

}
