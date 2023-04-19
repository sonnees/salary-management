package gui;

import javax.swing.JPanel;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.sql.Date;
import java.awt.Font;
import javax.swing.SwingConstants;
import javax.swing.UIManager;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.SpinnerModel;
import javax.swing.SpinnerNumberModel;
import javax.swing.JTable;
import javax.swing.JScrollBar;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFileChooser;
import javax.swing.JFormattedTextField;
import javax.swing.JRadioButton;
import com.toedter.components.JLocaleChooser;

import dao.Dao_NhanVienHanhChanh;
import dao.Dao_PhongBan;
import dao.Dao_TinhLuongNVHC;
import db.ConnectDB;
import entity.EChucVu;
import entity.ETiengAnh;
import entity.ETrinhDo;
import entity.LuongNVHC;
import entity.NhanVienHanhChanh;
import entity.PhongBan;
import model.TableModel_NhanVienHanhChanh_DayDu;
import model.TableModel_NhanVienHanhChanh_RutGon;
import model.TableModel_TinhLuongNVHC_RutGon;
import model.TableModel_TinhLuongNVHC_DayDu;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.toedter.calendar.JCalendar;
import com.toedter.calendar.JDayChooser;
import com.toedter.calendar.JDateChooser;
import javax.swing.DefaultComboBoxModel;
import java.awt.Panel;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Period;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.stream.Collectors;

import javax.swing.border.TitledBorder;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.JTableHeader;
import javax.swing.table.TableCellRenderer;
import javax.swing.text.DefaultFormatterFactory;
import javax.swing.text.NumberFormatter;

import org.jfree.chart.ChartUtilities;

import javax.swing.border.EtchedBorder;
import java.awt.Color;
import java.awt.Component;
import java.awt.Dimension;

import javax.swing.JScrollPane;
import javax.swing.JSpinner;

import java.awt.event.ActionListener;
import java.awt.event.InputMethodEvent;
import java.awt.event.InputMethodListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.awt.event.ActionEvent;

public class Pn_TinhLuongNVHC extends JPanel implements ActionListener{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JTable tbl_LuongNVHC;
	private JButton btnXuatFile;
	private JButton btnTinhLuong;
	private JComboBox cmb_SapXep;
	private JComboBox cmb_Thang;
	private Dao_TinhLuongNVHC daoTinhLuongNVHC = new Dao_TinhLuongNVHC(ConnectDB.getInstance().getConnection());
	private List<LuongNVHC> listlLuongNVHCs = daoTinhLuongNVHC.tinhLuongNVHC(2, 2023);
	private JComboBox cmb_CheDoXem;
	private TableModel_TinhLuongNVHC_DayDu tableModel_TinhLuongNVHC_DayDu;
	private TableModel_TinhLuongNVHC_RutGon tableModel_TinhLuongNVHC_RutGon;
	private JButton btnXemBangLuong;
	private JSpinner spinnerThang;
	private JSpinner spinnerYear;
	
	/**
	 * Create the panel.
	 * @throws SQLException 
	 */
	public Pn_TinhLuongNVHC() throws SQLException {
		setLayout(null);
		
		JLabel lbl_TieuDe = new JLabel("BẢNG LƯƠNG NHÂN VIÊN HÀNH CHÁNH");
		lbl_TieuDe.setBounds(10, 10, 1241, 25);
		lbl_TieuDe.setHorizontalAlignment(SwingConstants.CENTER);
		lbl_TieuDe.setFont(new Font("Tahoma", Font.BOLD, 20));
		add(lbl_TieuDe);
		
		btnXuatFile = new JButton("Xuất PDF");
		btnXuatFile.setToolTipText("Xuất file");
		btnXuatFile.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btnXuatFile.setBounds(1062, 170, 105, 32);
		add(btnXuatFile);
		
		btnTinhLuong = new JButton("Tính Lương");

		btnTinhLuong.setToolTipText("Lưu bảng lương vào hệ thống");
		btnTinhLuong.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btnTinhLuong.setBounds(915, 170, 117, 32);
		add(btnTinhLuong);
		
		JPanel panel = new JPanel();
		panel.setBorder(new TitledBorder(new EtchedBorder(EtchedBorder.LOWERED, new Color(255, 255, 255), new Color(160, 160, 160)), "B\u1EA3ng l\u01B0\u01A1ng c\u1EE7a nh\u00E2n vi\u00EAn h\u00E0nh ch\u00E1nh ", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
		panel.setBounds(10, 206, 1241, 414);
		add(panel);
		panel.setLayout(null);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(10, 35, 1221, 369);
		panel.add(scrollPane);
		
		cmb_SapXep = new JComboBox();
		cmb_SapXep.setToolTipText("Chọn để sắp xếp bảng");
		cmb_SapXep.setModel(new DefaultComboBoxModel(new String[] {"Theo tên", "Theo thành lương"}));
		cmb_SapXep.setFont(new Font("Tahoma", Font.PLAIN, 10));
		cmb_SapXep.setBounds(1118, 10, 113, 22);
		panel.add(cmb_SapXep);
		
		cmb_CheDoXem = new JComboBox();
		cmb_CheDoXem.setModel(new DefaultComboBoxModel(new String[] {"Xem rút gọn", "Xem đầy đủ"}));
		cmb_CheDoXem.setToolTipText("Thay đổi chế độ xem\r\n");
		cmb_CheDoXem.setFont(new Font("Tahoma", Font.PLAIN, 10));
		cmb_CheDoXem.setBounds(1026, 10, 82, 22);
		panel.add(cmb_CheDoXem);
		
		String[] headLine_tableDayDu = {"Mã","Họ và tên","Lương cơ bản","Lương ngày","Số ngày đi làm","Số ngày nghỉ có phép","Số ngày nghỉ không phép","Số ngày tăng ca","Số ngày làm chủ nhật","Số ngày được tính lương","Tổng lương cơ bản","Tổng lương thêm","Thành lương"};
		String[] headLine_tableRutGon = {"Họ và tên","Lương cơ bản","Số ngày tăng ca","Số ngày làm chủ nhật","Số ngày được tính lương","Tổng lương cơ bản","Tổng lương thêm","Thành lương"};
		
		tableModel_TinhLuongNVHC_DayDu = new TableModel_TinhLuongNVHC_DayDu(listlLuongNVHCs, headLine_tableDayDu);
		tableModel_TinhLuongNVHC_RutGon = new TableModel_TinhLuongNVHC_RutGon(listlLuongNVHCs, headLine_tableRutGon);
		
		tbl_LuongNVHC = new JTable(tableModel_TinhLuongNVHC_RutGon) {
			@Override
            public Component prepareRenderer(TableCellRenderer renderer, int row, int column) {
                Component c = super.prepareRenderer(renderer, row, column);
                if (isCellSelected(row, column)) {
                    c.setBackground(getSelectionBackground());
                } else {
                    if (row % 2 == 0) {
                        c.setBackground(new Color(220, 239,255));
                    } else {
                        c.setBackground(new Color(255, 255, 255));
                    }
                }
                return c;
            }
		};
		DefaultTableCellRenderer rightRenderer = new DefaultTableCellRenderer();
		tbl_LuongNVHC.getColumnModel().getColumn(0).setCellRenderer(rightRenderer);
        JTableHeader header = tbl_LuongNVHC.getTableHeader();
        header.setBackground(Color.BLUE);
        header.setForeground(Color.WHITE);
        header.setFont(new Font("Tahoma", Font.BOLD, 15));
        header.setPreferredSize(new Dimension(header.getWidth(), 30));
        tbl_LuongNVHC.setFont(new Font("Tahoma", Font.PLAIN, 15));
        tbl_LuongNVHC.setBackground(UIManager.getColor("Button.light"));
        tbl_LuongNVHC.setSelectionMode(ListSelectionModel.SINGLE_INTERVAL_SELECTION);
        tbl_LuongNVHC.setSelectionBackground(new Color(190, 210, 255));
        tbl_LuongNVHC.setRowHeight(35);
		
		scrollPane.setViewportView(tbl_LuongNVHC);
		
		
		JPanel panel_2 = new JPanel();
		panel_2.setBackground(Color.WHITE);
		panel_2.setBounds(375, 58, 462, 83);
		add(panel_2);
		panel_2.setLayout(null);
		
		JPanel panel_1 = new JPanel();
		panel_1.setBackground(Color.WHITE);
		panel_1.setBounds(10, 10, 269, 65);
		panel_2.add(panel_1);
		panel_1.setBorder(new TitledBorder(null, "M\u00F3c th\u1EDDi gian c\u1EE7a b\u1EA3ng l\u01B0\u01A1ng", TitledBorder.LEADING, TitledBorder.TOP, null, null));
		panel_1.setLayout(null);
		
		JLabel lbl_Thang = new JLabel("Tháng");
		lbl_Thang.setBounds(24, 21, 46, 32);
		panel_1.add(lbl_Thang);
		lbl_Thang.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_Thang.setFont(new Font("Tahoma", Font.PLAIN, 14));
	
		
		SpinnerModel spinnerModel_Thang = new SpinnerNumberModel(2, 1, 12, 1);
        spinnerThang = new JSpinner(spinnerModel_Thang);
        spinnerThang.setBounds(72, 21, 35, 32);
        spinnerThang.setFont(new Font("Tahoma", Font.PLAIN, 14));
        spinnerThang.setBackground(Color.WHITE);
        panel_1.add(spinnerThang);
		
		JLabel lbl_Nam = new JLabel("Năm");
		lbl_Nam.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_Nam.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_Nam.setBounds(144, 21, 36, 32);
		panel_1.add(lbl_Nam);
		
		SpinnerModel spinnerModel = new SpinnerNumberModel(2023, 2020, 2030, 1);
		spinnerYear = new JSpinner(spinnerModel);
		spinnerYear.setFont(new Font("Tahoma", Font.PLAIN, 14));
		spinnerYear.setBackground(Color.WHITE);
	    spinnerYear.setBounds(181, 21, 64, 32);
	    panel_1.add(spinnerYear);
	    
		btnXemBangLuong = new JButton("Xem Bảng Lương");
		btnXemBangLuong.setBounds(292, 29, 160, 32);
		panel_2.add(btnXemBangLuong);
		btnXemBangLuong.setToolTipText("Xem bảng lương của các nhân viên hành chính trong công ty trong tháng và nam chọn");
		btnXemBangLuong.setFont(new Font("Tahoma", Font.PLAIN, 14));

		btnTinhLuong.addActionListener(this);
		btnXemBangLuong.addActionListener(this);
		btnXuatFile.addActionListener(this);
		cmb_SapXep.addActionListener(this);
		cmb_CheDoXem.addActionListener(this);
		cmb_SapXep.setSelectedIndex(0);
		btnTinhLuong.setEnabled(false);
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		Object o = e.getSource();
		if(o.equals(btnXemBangLuong)) {
			try {
				LocalDate dateNow = LocalDate.now();
				boolean thoaThoiGian =(Integer.parseInt(spinnerYear.getValue().toString()) == dateNow.getYear() 
						&& Integer.parseInt(spinnerThang.getValue().toString()) > (dateNow.getMonthValue())
					) || Integer.parseInt(spinnerYear.getValue().toString()) > dateNow.getYear() ;
					
				
				String ngayTinhLuong = Integer.parseInt(spinnerThang.getValue().toString())+"-"+Integer.parseInt(spinnerYear.getValue().toString());
				listlLuongNVHCs = daoTinhLuongNVHC.tinhLuongNVHC(Integer.parseInt(spinnerThang.getValue().toString()),Integer.parseInt(spinnerYear.getValue().toString()));
				cmb_SapXep.setSelectedIndex(0);
				
				if(daoTinhLuongNVHC.daTinhLuongThang(ngayTinhLuong) || thoaThoiGian)
					btnTinhLuong.setEnabled(false);
				else 
					btnTinhLuong.setEnabled(true);
				
				updateTable();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		else if(o.equals(cmb_SapXep)) {
			if(cmb_SapXep.getSelectedIndex()==0) {
				Collections.sort(listlLuongNVHCs,
						(lnv1,lnv2) -> layKQSoSanh(lnv1.getNvhc().getTenNVHC(),lnv2.getNvhc().getTenNVHC()));
				updateTable();
			}
			else if(cmb_SapXep.getSelectedIndex()==1) {
				Collections.sort(listlLuongNVHCs,
						(lnv1,lnv2) -> (lnv1.getThanhLuong()<lnv2.getThanhLuong())==true?1:-1);
				updateTable();
			}
		}
		
		else if(o.equals(cmb_CheDoXem)) {
			updateTable();
		}
		
		else if(o.equals(btnTinhLuong)) {
			String ngayTinhLuong = Integer.parseInt(spinnerThang.getValue().toString())+"-"+Integer.parseInt(spinnerYear.getValue().toString());
			int i = JOptionPane.showConfirmDialog(
					this, "Xác nhận tính lương cho tháng '"+ngayTinhLuong+"'",
					"Phần Mềm Tính Lương", 2);
			if (i == 0) {
				for(LuongNVHC l : listlLuongNVHCs) {
					boolean rs=false;
					try {
						rs = daoTinhLuongNVHC.themLuongNVHC(l);
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
					
					if(!rs)
						JOptionPane.showMessageDialog(this, "Tính lương thất bại cho "+l.toString(), "Phần Mềm Tính Lương", 2);
				}
				btnTinhLuong.setEnabled(false);
				JOptionPane.showMessageDialog(this, "Đã lưu \n các phiếu tính lương cho nhân viên hành chách '"+ngayTinhLuong+"' vào hệ thống thành công", "Phần Mềm Tính Lương", 1);
			} else
				return;
		}
		else if(o.equals(btnXuatFile)) {
			JFileChooser fileChooser = new JFileChooser();
	        int result = fileChooser.showSaveDialog(null);
	        if (result == JFileChooser.APPROVE_OPTION) { 
	            File selectedFile = fileChooser.getSelectedFile(); 
	            exportToPdf(tbl_LuongNVHC, selectedFile);
	        } else 
	        	JOptionPane.showMessageDialog(this, "Lưu thất bại", "Phần Mềm Tính Lương", 2);
			
		}
	}
	private int layKQSoSanh(String tenNVHC1, String tenNVHC2) {
		
		String[] arrTenNVHC1 = tenNVHC1.split(" ");
		String[] arrTenNVHC2 = tenNVHC2.split(" ");
		
		if(arrTenNVHC1[arrTenNVHC1.length-1].compareTo(arrTenNVHC2[arrTenNVHC2.length-1])!=0) 
			return arrTenNVHC1[arrTenNVHC1.length-1].compareTo(arrTenNVHC2[arrTenNVHC2.length-1]);
		
		return arrTenNVHC1[arrTenNVHC1.length-1].compareTo(arrTenNVHC2[arrTenNVHC2.length-1]);
	}

	private void updateTable() {
		tableModel_TinhLuongNVHC_DayDu.setList(listlLuongNVHCs);
		tableModel_TinhLuongNVHC_RutGon.setList(listlLuongNVHCs);
		
		if(cmb_CheDoXem.getSelectedIndex()==0) 
			tbl_LuongNVHC.setModel(tableModel_TinhLuongNVHC_RutGon);
		else 
			tbl_LuongNVHC.setModel(tableModel_TinhLuongNVHC_DayDu);
		
		tbl_LuongNVHC.updateUI();
	}
	public void exportToPdf(JTable table, File fileName) {
        Document document = new Document(PageSize.A4.rotate());
        try {
        	String ngayTinhLuong = Integer.parseInt(spinnerThang.getValue().toString())+"-"+Integer.parseInt(spinnerYear.getValue().toString());
        	BaseFont unicodeFont = BaseFont.createFont("c:/windows/fonts/arial.ttf", BaseFont.IDENTITY_H, BaseFont.EMBEDDED);
            
            PdfWriter.getInstance(document, new FileOutputStream(fileName));
            document.open();

            Paragraph paragraph_title = new Paragraph("BẢNG THANH TOÁN LƯƠNG CHO NHÂN VIÊN HÀNH CHÍNH",new com.itextpdf.text.Font(unicodeFont, 14,Font.BOLD));
            paragraph_title.setAlignment(Element.ALIGN_CENTER);
            document.add(paragraph_title);
            
            Paragraph paragraph_title1 = new Paragraph("Tháng "+ngayTinhLuong+"\n\n",new com.itextpdf.text.Font(unicodeFont, 14,Font.BOLD));
            paragraph_title1.setAlignment(Element.ALIGN_CENTER);
            document.add(paragraph_title1);
           
            PdfPTable pdfTable = new PdfPTable(table.getColumnCount());
            pdfTable.setWidthPercentage(100);)
            PdfPCell cell;
            for (int i = 0; i < table.getColumnCount(); i++) {
                cell = new PdfPCell(
                		new com.itextpdf.text.Phrase(table.getColumnName(i),
                		new com.itextpdf.text.Font(unicodeFont, 9,Font.BOLD)));
                pdfTable.addCell(cell);
            }
            for (int i = 0; i < table.getRowCount(); i++) {
                for (int j = 0; j < table.getColumnCount(); j++) {
                    cell = new PdfPCell(
                    			new com.itextpdf.text.Phrase(table.getValueAt(i, j).toString(),
                    			new com.itextpdf.text.Font(unicodeFont, 9)));
                    pdfTable.addCell(cell);
                }
            }
            document.add(pdfTable);
            
            long tongTien = 0;
            for(LuongNVHC i : listlLuongNVHCs)
            	tongTien +=i.getThanhLuong();
            
            Paragraph paragraph_Ket = new Paragraph("\n               Tổng số tiền: "+new DecimalFormat("###,###,###").format(tongTien)+" vnd",new com.itextpdf.text.Font(unicodeFont, 14));
            paragraph_Ket.setAlignment(Element.ALIGN_LEFT);
            document.add(paragraph_Ket);
            Paragraph paragraph_KyTen = new Paragraph("\nNgày  ...  tháng  ...  năm  ...                         .",new com.itextpdf.text.Font(unicodeFont, 14,Font.ITALIC));
            paragraph_KyTen.setAlignment(Element.ALIGN_RIGHT);
            document.add(paragraph_KyTen);
            Paragraph paragraph_GiamDoc = new Paragraph("              Giám đốc                                       .",new com.itextpdf.text.Font(unicodeFont, 14,Font.BOLD));
            paragraph_GiamDoc.setAlignment(Element.ALIGN_RIGHT);
            document.add(paragraph_GiamDoc);
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            document.close();
            JOptionPane.showMessageDialog(this, "File đã được lưu tại '"+fileName+"'", "Phần Mềm Tính Lương", 1);
        }
    }
}
