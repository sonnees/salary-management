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
import javax.swing.JTable;
import javax.swing.JScrollBar;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JRadioButton;
import com.toedter.components.JLocaleChooser;

import dao.Dao_NhanVienHanhChanh;
import dao.Dao_PhieuChamCong_NhanVienHanhChanh;
import dao.Dao_PhongBan;
import db.ConnectDB;
import entity.EChucVu;
import entity.ETiengAnh;
import entity.ETrangThai;
import entity.ETrinhDo;
import entity.NhanVienHanhChanh;
import entity.PhieuChamCongNVHC;
import entity.PhongBan;
import model.TableModel_ChamCongNhanVienHanhChanh;
import model.TableModel_NhanVienHanhChanh_DayDu;
import model.TableModel_NhanVienHanhChanh_RutGon;
import model.TableModel_NhanVienHanhChanh_SieuRutGon;

import com.toedter.calendar.JCalendar;
import com.toedter.calendar.JDayChooser;
import com.toedter.calendar.JDateChooser;
import javax.swing.DefaultComboBoxModel;
import java.awt.Panel;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Period;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import javax.swing.border.TitledBorder;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.JTableHeader;
import javax.swing.table.TableCellRenderer;
import javax.swing.border.EtchedBorder;
import java.awt.Color;
import java.awt.Component;
import java.awt.Dimension;

import javax.swing.JScrollPane;
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
import java.awt.event.ActionEvent;
import javax.swing.JCheckBox;
import javax.swing.JTextPane;
import javax.swing.table.TableModel;
import java.awt.SystemColor;

public class Pn_ChamCongNhanVienHanhChach extends JPanel implements ActionListener, PropertyChangeListener{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JTextField txt_Ma;
	private JTextField txt_Ten;
	private JTable tbl_PhieuChamCong;
	private JDateChooser dch_NgayCham;
	private JButton btnLamRong;
	private JButton btnChamCong;
	private JComboBox cmb_SapXep_PhieuChamCong;
	private JTextField txt_NgayCham;
	
	private Dao_PhieuChamCong_NhanVienHanhChanh daoPhieuChamCong = new Dao_PhieuChamCong_NhanVienHanhChanh(ConnectDB.getInstance().getConnection());
	private Dao_NhanVienHanhChanh daoNhanVienHanhChanh = new Dao_NhanVienHanhChanh(ConnectDB.getInstance().getConnection());
	private List<NhanVienHanhChanh> listNhanVien = null;
	private List<PhieuChamCongNVHC> listPhieuChamCong = null;
	private TableModel_NhanVienHanhChanh_SieuRutGon tableModel_NhanVienHanhChanh_SieuRutGon;
	
	private String[] tiengAnh = {"Mức yếu", "Mức khá", "Mức giỏi"};
	private String[] trinhDo = {"Dưới Đại học", "Đại học", "Trên Đại học"};
	private String[] chuVu = {"Nhân viên chăm sóc khách hàng", "Nhân viên IT", "Nhân viên kế toán", "Nhân viên marketing", "Nhân viên nhân sự"};
	private JTable tbl_NhanVien;
	private JComboBox cmb_TrangThai;
	private JCheckBox chk_TangCa;
	private JTextPane txp_LyDo;
	private JComboBox cmb_SapXep_NhanVien;
	private TableModel_ChamCongNhanVienHanhChanh tableModel_ChamCongNhanVienHanhChach;
	private JButton btn_TinhLuongToanBo;

	
	/**
	 * Create the panel.
	 * @throws SQLException 
	 */
	public Pn_ChamCongNhanVienHanhChach() throws SQLException {
		setLayout(null);
		
		JLabel lbl_TieuDe = new JLabel("CHẤM CÔNG NHÂN VIÊN HÀNH CHÁNH");
		lbl_TieuDe.setBounds(10, 10, 1241, 25);
		lbl_TieuDe.setHorizontalAlignment(SwingConstants.CENTER);
		lbl_TieuDe.setFont(new Font("Tahoma", Font.BOLD, 20));
		add(lbl_TieuDe);
		
		JLabel lbl_Ma = new JLabel("Mã nhân viên");
		lbl_Ma.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_Ma.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_Ma.setBounds(686, 113, 86, 32);
		add(lbl_Ma);
		

		txt_Ma = new JTextField();
		txt_Ma.setBackground(Color.WHITE);
		txt_Ma.setEditable(false);
		txt_Ma.setFont(new Font("Tahoma", Font.PLAIN, 14));
		txt_Ma.setColumns(10);
		txt_Ma.setBounds(785, 114, 158, 32);
		add(txt_Ma);
		
		btnLamRong = new JButton("Làm Rỗng");
		btnLamRong.setToolTipText("Làm rỗng các thông tin trên");
		btnLamRong.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btnLamRong.setBounds(1057, 234, 105, 32);
		add(btnLamRong);
		
		btnChamCong = new JButton("Chấm công");

		btnChamCong.setToolTipText("Chọn để chấm công");
		btnChamCong.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btnChamCong.setBounds(922, 234, 105, 32);
		add(btnChamCong);
		
		JLabel lbl_Ten = new JLabel("Họ và tên");
		lbl_Ten.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_Ten.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_Ten.setBounds(686, 151, 86, 32);
		add(lbl_Ten);
		
		txt_Ten = new JTextField();
		txt_Ten.setBackground(Color.WHITE);
		txt_Ten.setEditable(false);
		txt_Ten.setFont(new Font("Tahoma", Font.PLAIN, 14));
		txt_Ten.setColumns(10);
		txt_Ten.setBounds(785, 152, 158, 32);
		add(txt_Ten);
		
		JPanel pnl_BangPhieuChamCong = new JPanel();
		pnl_BangPhieuChamCong.setBorder(new TitledBorder(new EtchedBorder(EtchedBorder.LOWERED, new Color(255, 255, 255), new Color(160, 160, 160)), "B\u1EA3ng phi\u1EBFu ch\u1EA5m c\u00F4ng trong ng\u00E0y", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
		pnl_BangPhieuChamCong.setBounds(10, 274, 1241, 346);
		add(pnl_BangPhieuChamCong);
		pnl_BangPhieuChamCong.setLayout(null);
		
		JScrollPane scb_PhieuChamCong = new JScrollPane();
		scb_PhieuChamCong.setBounds(10, 34, 1221, 302);
		pnl_BangPhieuChamCong.add(scb_PhieuChamCong);
		
		cmb_SapXep_PhieuChamCong = new JComboBox();
		cmb_SapXep_PhieuChamCong.setToolTipText("Chọn để sắp xếp bảng");
		cmb_SapXep_PhieuChamCong.setModel(new DefaultComboBoxModel(new String[] {"Không sắp xếp", "Theo tên nhân viên"}));
		cmb_SapXep_PhieuChamCong.setFont(new Font("Tahoma", Font.PLAIN, 10));
		cmb_SapXep_PhieuChamCong.setBounds(1118, 10, 113, 22);
		pnl_BangPhieuChamCong.add(cmb_SapXep_PhieuChamCong);
		
		String[] headLine_tableChamCong = {"Mã Phiếu","Tên Nhân Viên","Tăng Ca","Ngày Chấm","Trạng Thái","Lý Do"};
		tableModel_ChamCongNhanVienHanhChach = new TableModel_ChamCongNhanVienHanhChanh(new ArrayList<PhieuChamCongNVHC>(), headLine_tableChamCong);
		
		tbl_PhieuChamCong = new JTable(tableModel_ChamCongNhanVienHanhChach) {
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
		tbl_PhieuChamCong.getColumnModel().getColumn(0).setCellRenderer(rightRenderer);
        JTableHeader headerPCC = tbl_PhieuChamCong.getTableHeader();
        headerPCC.setBackground(Color.BLUE);
        headerPCC.setForeground(Color.WHITE);
        headerPCC.setFont(new Font("Tahoma", Font.BOLD, 15));
        headerPCC.setPreferredSize(new Dimension(headerPCC.getWidth(), 30));
        tbl_PhieuChamCong.setFont(new Font("Tahoma", Font.PLAIN, 15));
        tbl_PhieuChamCong.setBackground(UIManager.getColor("Button.light"));
        tbl_PhieuChamCong.setSelectionMode(ListSelectionModel.SINGLE_INTERVAL_SELECTION);
        tbl_PhieuChamCong.setSelectionBackground(new Color(190, 210, 255));
        tbl_PhieuChamCong.setRowHeight(35);
		
        scb_PhieuChamCong.setViewportView(tbl_PhieuChamCong);
		
		JPanel pnl_BangNhanVien = new JPanel();
		pnl_BangNhanVien.setLayout(null);
		pnl_BangNhanVien.setBorder(new TitledBorder(new EtchedBorder(EtchedBorder.LOWERED, new Color(255, 255, 255), new Color(160, 160, 160)), "B\u1EA3ng nh\u00E2n vi\u00EAn h\u00E0nh ch\u00E1nh ch\u01B0a ch\u1EA5m c\u00F4ng trong ng\u00E0y", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
		pnl_BangNhanVien.setBounds(10, 45, 666, 228);
		add(pnl_BangNhanVien);
		
		JScrollPane scb_NhanVien = new JScrollPane();
		scb_NhanVien.setBounds(10, 35, 646, 183);
		pnl_BangNhanVien.add(scb_NhanVien);
		
		String[] headLine_tableRutGon = {"Họ và tên","Giới tính","Ngày sinh","Chứ vụ"};
		tableModel_NhanVienHanhChanh_SieuRutGon = new TableModel_NhanVienHanhChanh_SieuRutGon(new ArrayList<NhanVienHanhChanh>(), headLine_tableRutGon);
		
		tbl_NhanVien = new JTable(tableModel_NhanVienHanhChanh_SieuRutGon) {
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
		rightRenderer = new DefaultTableCellRenderer();
		tbl_NhanVien.getColumnModel().getColumn(0).setCellRenderer(rightRenderer);
        JTableHeader header = tbl_NhanVien.getTableHeader();
        header.setBackground(Color.BLUE);
        header.setForeground(Color.WHITE);
        header.setFont(new Font("Tahoma", Font.BOLD, 15));
        header.setPreferredSize(new Dimension(header.getWidth(), 30));
        tbl_NhanVien.setFont(new Font("Tahoma", Font.PLAIN, 15));
        tbl_NhanVien.setBackground(UIManager.getColor("Button.light"));
        tbl_NhanVien.setSelectionMode(ListSelectionModel.SINGLE_INTERVAL_SELECTION);
        tbl_NhanVien.setSelectionBackground(new Color(190, 210, 255));
        tbl_NhanVien.setRowHeight(35);
		
		scb_NhanVien.setViewportView(tbl_NhanVien);
		
		tbl_NhanVien.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				int index = tbl_NhanVien.getSelectedRow();
				try {
					capNhatLenTruong(index);
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}

			private void capNhatLenTruong(int index) throws SQLException {
				NhanVienHanhChanh nv = listNhanVien.get(index);
				txt_Ma.setText(nv.getMaNVHC());
				txt_Ten.setText(nv.getTenNVHC());
			}
		});
		
		cmb_SapXep_NhanVien = new JComboBox();
		cmb_SapXep_NhanVien.setModel(new DefaultComboBoxModel(new String[] {"Không sắp xếp", "Theo tên", "Theo ngay tham gia"}));
		cmb_SapXep_NhanVien.setToolTipText("Chọn để sắp xếp bảng");
		cmb_SapXep_NhanVien.setFont(new Font("Tahoma", Font.PLAIN, 10));
		cmb_SapXep_NhanVien.setBounds(543, 10, 113, 22);
		pnl_BangNhanVien.add(cmb_SapXep_NhanVien);
		
		btn_TinhLuongToanBo = new JButton("Tính lương toàn bộ");
		btn_TinhLuongToanBo.setFont(new Font("Tahoma", Font.PLAIN, 10));
		btn_TinhLuongToanBo.setBounds(406, 11, 127, 21);
		pnl_BangNhanVien.add(btn_TinhLuongToanBo);
		
		JPanel pnl_NgayCham = new JPanel();
		pnl_NgayCham.setBorder(new TitledBorder(new EtchedBorder(EtchedBorder.LOWERED, new Color(255, 255, 255), new Color(160, 160, 160)), "Ng\u00E0y Ch\u1EA5m", TitledBorder.CENTER, TitledBorder.TOP, null, new Color(0, 0, 0)));
		pnl_NgayCham.setBounds(856, 45, 212, 58);
		add(pnl_NgayCham);
		pnl_NgayCham.setLayout(null);
		
		dch_NgayCham = new JDateChooser();
		dch_NgayCham.setBounds(164, 16, 22, 32);
		pnl_NgayCham.add(dch_NgayCham);
		dch_NgayCham.getCalendarButton().setFont(new Font("Tahoma", Font.PLAIN, 14));
		dch_NgayCham.setDate(new java.util.Date());
		dch_NgayCham.setFont(new Font("Tahoma", Font.PLAIN, 14));
		
		txt_NgayCham = new JTextField();
		txt_NgayCham.setBounds(28, 16, 139, 32);
		pnl_NgayCham.add(txt_NgayCham);
		txt_NgayCham.setEditable(false);
		txt_NgayCham.setBackground(Color.WHITE);
		txt_NgayCham.setFont(new Font("Tahoma", Font.PLAIN, 14));
		txt_NgayCham.setColumns(10);
		
		cmb_TrangThai = new JComboBox();
		cmb_TrangThai.setBackground(Color.WHITE);
		cmb_TrangThai.setFont(new Font("Tahoma", Font.PLAIN, 14));
		cmb_TrangThai.setModel(new DefaultComboBoxModel(new String[] {"Vắng không phép", "Vắng có phép","Có mặt"}));
		cmb_TrangThai.setBounds(785, 193, 158, 32);
		add(cmb_TrangThai);
		
		JLabel lbl_TrangThai = new JLabel("Trạng thái");
		lbl_TrangThai.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_TrangThai.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_TrangThai.setBounds(686, 194, 86, 32);
		add(lbl_TrangThai);
		
		chk_TangCa = new JCheckBox("Tăng ca");
		chk_TangCa.setFont(new Font("Tahoma", Font.PLAIN, 14));
		chk_TangCa.setBounds(1007, 119, 93, 21);
		chk_TangCa.setEnabled(false);
		add(chk_TangCa);
		
		JLabel lbl_LyDo = new JLabel("Lý do vắng (nếu có)");
		lbl_LyDo.setHorizontalAlignment(SwingConstants.LEFT);
		lbl_LyDo.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lbl_LyDo.setBounds(1011, 151, 158, 32);
		add(lbl_LyDo);
		
		txp_LyDo = new JTextPane();
		txp_LyDo.setBounds(1010, 179, 245, 45);
		txp_LyDo.setEditable(false);
		add(txp_LyDo);
		
		dch_NgayCham.addPropertyChangeListener(this);
		cmb_TrangThai.addActionListener(this);
		btnChamCong.addActionListener(this);
		btnLamRong.addActionListener(this);
		cmb_SapXep_PhieuChamCong.addActionListener(this);
		cmb_SapXep_NhanVien.addActionListener(this);
		btn_TinhLuongToanBo.addActionListener(this);
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		Object o = e.getSource();
		if(o.equals(btnLamRong)) {
			txt_Ma.setText("");
			txt_Ten.setText("");
			txp_LyDo.setText("");
			chk_TangCa.setSelected(false);
			cmb_TrangThai.setSelectedIndex(0);
		}
		else if(o.equals(cmb_TrangThai)) {
			if(cmb_TrangThai.getSelectedIndex()!=2) {
				chk_TangCa.setEnabled(false);
				chk_TangCa.setSelected(false);
				if(cmb_TrangThai.getSelectedIndex()==1) 
					txp_LyDo.setEditable(true);
				else {
					txp_LyDo.setEditable(false);
					txp_LyDo.setText("");
				}
			}
			else 
				chk_TangCa.setEnabled(true);
		}
		
		else if(o.equals(cmb_SapXep_NhanVien)) {
			if(cmb_SapXep_NhanVien.getSelectedIndex()==0) {
				Collections.sort(listNhanVien,
						(nv1,nv2) -> nv1.getMaNVHC().compareTo(nv2.getMaNVHC()));
				updateTableNhanVien();
			} 
			else if(cmb_SapXep_NhanVien.getSelectedIndex()==1) {
				System.out.println("1`1");
				Collections.sort(listNhanVien,
						(nv1,nv2) -> layKQSoSanh(nv1.getTenNVHC(),nv2.getTenNVHC()));
				updateTableNhanVien();
			}
			else if(cmb_SapXep_NhanVien.getSelectedIndex()==2) {
				Collections.sort(listNhanVien,
						(nv1,nv2) -> nv1.getNgaySinh().compareTo(nv2.getNgaySinh()));
				updateTableNhanVien();
			}
		}
		else if(o.equals(cmb_SapXep_PhieuChamCong)) {
			if(cmb_SapXep_PhieuChamCong.getSelectedIndex()==0) {
				Collections.sort(listPhieuChamCong,
						(pcc1,pcc2) -> pcc1.getMaPCCNCHC().compareTo(pcc2.getMaPCCNCHC()));
				updateTableNhanVienPhieuCham();
			} 
			else if(cmb_SapXep_PhieuChamCong.getSelectedIndex()==1) {
				Collections.sort(listPhieuChamCong,
						(pcc1,pcc2) -> layKQSoSanh(pcc1.getNVHC().getTenNVHC(),pcc2.getNVHC().getTenNVHC()));
				updateTableNhanVienPhieuCham();
			}
		}
		else if(o.equals(btnChamCong)) {
			if(listNhanVien.size()==0) {
				JOptionPane.showMessageDialog(this, "Không còn nhân viên nào!","Phần Mềm Tính Lương", 2);
				return;
			}
			
			if(tbl_NhanVien.getSelectedRow()<0) {
				JOptionPane.showMessageDialog(this, "Chưa chọn nhân viên!","Phần Mềm Tính Lương", 2);
				return;
			}
			
			NhanVienHanhChanh nv = listNhanVien.get(tbl_NhanVien.getSelectedRow());
			LocalDate ngayCham = LocalDate.parse(new SimpleDateFormat("yyyy-MM-dd").format(dch_NgayCham.getDate()));
			PhieuChamCongNVHC phieuChamCongNVHC = new PhieuChamCongNVHC(
					chk_TangCa.isSelected(),
					ngayCham,
					layETrangThai(),
					txp_LyDo.getText(),
					nv) ;
			
			String thongTinChamCong ="    *Ngày chấm công: "+ new SimpleDateFormat("dd/MM/yyyy").format(dch_NgayCham.getDate()) +
									 "\n    *Trạng thái: "+phieuChamCongNVHC.getTrangThai().layTrangThai() +
									 (!phieuChamCongNVHC.getLyDo().equals("")?"\n    *Lý do vắng mặt: "+phieuChamCongNVHC.getLyDo():"");
			
			int i = JOptionPane.showConfirmDialog(
					this, "Xác nhận chấm công cho nhân viên có Mã '"
							+ nv.getMaNVHC()+ "' và Tên '"+nv.getTenNVHC()+"':\n"+thongTinChamCong,
					"Phần Mềm Tính Lương", 2);
			if (i == 0) {
				boolean rs = daoPhieuChamCong.themPhieuChamCong(phieuChamCongNVHC);
				if(rs) {
					try {
						listNhanVien = daoNhanVienHanhChanh.layDS_NVHC_ChuaChamCongTrongNgay(ngayCham);
						listPhieuChamCong = daoPhieuChamCong.layDS_PhieuChamCongNVHC_Ngay(ngayCham);
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
					updateTableNhanVien();
					updateTableNhanVienPhieuCham();
					JOptionPane.showMessageDialog(this, "Chấm công thành công!", "Phần Mềm Tính Lương", 1);
				}
				else 
					JOptionPane.showMessageDialog(this, "Chấm công thất bại!", "Phần Mềm Tính Lương", 2);
			} else
				return;
		}
		else if(o.equals(btn_TinhLuongToanBo)) {
			LocalDate ngayCham = LocalDate.parse(new SimpleDateFormat("yyyy-MM-dd").format(dch_NgayCham.getDate()));
			
			String thongTinChamCong ="Xác nhận chấm công cho danh sách nhân viên: \n";
			thongTinChamCong+="    *Ngày chấm công: "+ new SimpleDateFormat("dd/MM/yyyy").format(dch_NgayCham.getDate()) +
			 "\n    *Trạng thái: "+layETrangThai().layTrangThai() +
			 (!txp_LyDo.getText().equals("")?"\n    *Lý do vắng mặt: "+txp_LyDo.getText()+"\n":"\n");
			List<PhieuChamCongNVHC> list = new ArrayList<PhieuChamCongNVHC>();
			int k = 1;
			for(NhanVienHanhChanh i : listNhanVien) {
				PhieuChamCongNVHC phieuChamCongNVHC = new PhieuChamCongNVHC(
						chk_TangCa.isSelected(),
						ngayCham,
						layETrangThai(),
						txp_LyDo.getText(),
						i) ;
				
				thongTinChamCong+=k+". Mã '"
								+ i.getMaNVHC()+ "' và Tên '"+i.getTenNVHC()+"'.\n";
				k++;
				list.add(phieuChamCongNVHC);
			}
			
			int i = JOptionPane.showConfirmDialog(
					this, thongTinChamCong,
					"Phần Mềm Tính Lương", 2);
			if (i == 0) {
				boolean rs =false;
				for(PhieuChamCongNVHC pcc : list) {
					rs = daoPhieuChamCong.themPhieuChamCong(pcc);
				}
				if(rs) {
					try {
						listNhanVien = daoNhanVienHanhChanh.layDS_NVHC_ChuaChamCongTrongNgay(ngayCham);
						listPhieuChamCong = daoPhieuChamCong.layDS_PhieuChamCongNVHC_Ngay(ngayCham);
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
					updateTableNhanVien();
					updateTableNhanVienPhieuCham();
					JOptionPane.showMessageDialog(this, "Chấm công thành công!", "Phần Mềm Tính Lương", 1);
				}
				else 
					JOptionPane.showMessageDialog(this, "Chấm công thất bại!", "Phần Mềm Tính Lương", 2);
			} else
				return;
		}
	}

	@Override
	public void propertyChange(PropertyChangeEvent evt) {
		Object o = evt.getSource();
		if(o.equals(dch_NgayCham) && dch_NgayCham.getDate()!=null) {
			LocalDate ngayHienTai = java.time.LocalDate.now();
			LocalDate ngayCham = LocalDate.parse(new SimpleDateFormat("yyyy-MM-dd").format(dch_NgayCham.getDate()));
			if(ngayCham.compareTo(ngayHienTai)>0) {
				JOptionPane.showMessageDialog(this, "Không thể chấm công cho tương lai!","Phần Mềm Tính Lương", 2);
				return;
			}
			
			txt_NgayCham.setText(new SimpleDateFormat("dd/MM/yyyy").format(dch_NgayCham.getDate()));
			try {
				listNhanVien = daoNhanVienHanhChanh.layDS_NVHC_ChuaChamCongTrongNgay(ngayCham);
				listPhieuChamCong = daoPhieuChamCong.layDS_PhieuChamCongNVHC_Ngay(ngayCham);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			updateTableNhanVien();
			updateTableNhanVienPhieuCham();
		}
			
	}
	
	private void updateTableNhanVien() {
		tableModel_NhanVienHanhChanh_SieuRutGon.setList(listNhanVien);
		tbl_NhanVien.setModel(tableModel_NhanVienHanhChanh_SieuRutGon);
		tbl_NhanVien.updateUI();
	}
	private void updateTableNhanVienPhieuCham() {
		tableModel_ChamCongNhanVienHanhChach.setList(listPhieuChamCong);
		tbl_PhieuChamCong.setModel(tableModel_ChamCongNhanVienHanhChach);
		tbl_PhieuChamCong.updateUI();
	}
	
	private int layKQSoSanh(String tenNVHC1, String tenNVHC2) {
		String[] arrTenNVHC1 = tenNVHC1.split(" ");
		String[] arrTenNVHC2 = tenNVHC2.split(" ");
		
		if(arrTenNVHC1[arrTenNVHC1.length-1].compareTo(arrTenNVHC2[arrTenNVHC2.length-1])!=0) 
			return arrTenNVHC1[arrTenNVHC1.length-1].compareTo(arrTenNVHC2[arrTenNVHC2.length-1]);
		
		return arrTenNVHC1[arrTenNVHC1.length-1].compareTo(arrTenNVHC2[arrTenNVHC2.length-1]);
	}
	private ETrangThai layETrangThai() {
		switch (cmb_TrangThai.getSelectedIndex()) {
		case 0: 
			return ETrangThai.VANGKHONGPHEP;
		case 1: 
			return ETrangThai.VANGPHEP;
		case 2: 
			return ETrangThai.COMAT;
		default:
			return ETrangThai.VANGKHONGPHEP;
		}
	}
}
