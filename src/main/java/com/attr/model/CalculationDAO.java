package com.attr.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import com.attr.util.DBUtil;

public class CalculationDAO {

    public void save(Calculation c) {

        String sql =
          "INSERT INTO calculation(num1,num2,operation,result) VALUES (?,?,?,?)";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, c.getNum1());
            ps.setInt(2, c.getNum2());
            ps.setString(3, c.getOperation());
            ps.setInt(4, c.getResult());

            // 🔥 IMPORTANT LINE
            int rows = ps.executeUpdate();

            System.out.println("DAO save() called");
            System.out.println("Rows inserted = " + rows);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
