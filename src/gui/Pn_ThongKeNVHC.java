package gui;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JSpinner;
import javax.swing.SpinnerModel;
import javax.swing.SpinnerNumberModel;
import javax.swing.SwingConstants;
import javax.swing.border.TitledBorder;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.data.statistics.HistogramDataset;
import org.jfree.util.Rotation;

import dao.Dao_ThongKe;
import db.ConnectDB;
import model.RoundBorder;
import javax.swing.JComboBox;
import javax.swing.JComponent;
import javax.swing.JFileChooser;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JButton;
import javax.swing.ImageIcon;
import javax.swing.border.EtchedBorder;

public class Pn_ThongKeNVHC extends JPanel implements ActionListener{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JSpinner spn_Thang_His;
	private JSpinner spn_Year_His;
	private SpinnerNumberModel spinnerModel_Thang_His = new SpinnerNumberModel(2, 1, 12, 1);
	private SpinnerNumberModel spinnerModel_Nam_His = new SpinnerNumberModel(2023, 2020, 2030, 1);
	private SpinnerNumberModel spinnerModel_TuThang_Plot = new SpinnerNumberModel(2, 1, 12, 1);
	private SpinnerNumberModel spinnerModel_TuNam_Plot = new SpinnerNumberModel(2023, 2020, 2030, 1);
	private SpinnerNumberModel spinnerModel_DenThang_Plot = new SpinnerNumberModel(2, 1, 12, 1);
	private SpinnerNumberModel spinnerModel_DenNam_Plot = new SpinnerNumberModel(2023, 2020, 2030, 1);
	private JButton btn_Plot;
	private JButton btn_Xem_Plot;
	private JSpinner spn_DenYear_Plot;
	private JSpinner spn_DenThang_Plot;
	private JSpinner spn_TuYear_Plot;
	private JSpinner spn_TuThang_Plot;
	private JButton btn_Xem_His;
	private JButton btn_His;
	private JButton btn_Xem_Tron;
	private JComboBox cmb_Tron;
	private JButton btn_Tron;
	private JPanel pnl_Tron;
	private JPanel pnl_His;
	private JComponent pnl_Plot;
	private ChartPanel layBieuDo_His = new ChartPanel(null);
	private ChartPanel layBieuDo_Tron= new ChartPanel(null);
	private ChartPanel layBieuDo_Plot= new ChartPanel(null);
	private Dao_ThongKe dao_ThongKe = new Dao_ThongKe(ConnectDB.getInstance().getConnection());
	private JFreeChart chart_Tron;
	private JFreeChart chart_Plot;
	private JFreeChart chart_His;
	/**
	 * Create the panel.
	 * @throws SQLException 
	 */
	public Pn_ThongKeNVHC() throws SQLException {
		setLayout(null);
		
		JLabel lbl_TieuDe = new JLabel("THỐNG KÊ NHÂN VIÊN HÀNH CHÁNH");
		lbl_TieuDe.setBounds(10, 10, 1241, 25);
		lbl_TieuDe.setHorizontalAlignment(SwingConstants.CENTER);
		lbl_TieuDe.setFont(new Font("Tahoma", Font.BOLD, 20));
		add(lbl_TieuDe);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(0, 50, 1263, 530);
		add(scrollPane);
		
		JPanel pnl_Lon = new JPanel();
		scrollPane.setViewportView(pnl_Lon);
		pnl_Lon.setPreferredSize(new Dimension(1222, 970)); 
		pnl_Lon.setLayout(null);
		
		pnl_Tron = new JPanel();
		pnl_Tron.setBackground(Color.WHITE);
		pnl_Tron.setBounds(10, 10, 575, 425);
		pnl_Tron.setBorder(new RoundBorder());
		pnl_Tron.setLayout(null);
		pnl_Lon.add(pnl_Tron);
		
		pnl_His = new JPanel();
		pnl_His.setBorder(new RoundBorder());
		pnl_His.setBackground(Color.WHITE);
		pnl_His.setBounds(595, 10, 639, 425);
		pnl_His.setLayout(null);
		pnl_Lon.add(pnl_His);
		
		pnl_Plot = new JPanel();
		pnl_Plot.setBorder(new RoundBorder());
		pnl_Plot.setBackground(Color.WHITE);
		pnl_Plot.setBounds(10, 445, 1224, 510);
		pnl_Plot.setLayout(null);
		pnl_Lon.add(pnl_Plot);
		
        btn_Tron = new JButton("");
        btn_Tron.setBackground(Color.WHITE);
        btn_Tron.setIcon(new ImageIcon("image\\download.png"));
        btn_Tron.setBorderPainted(false);
        btn_Tron.setBounds(497, 64, 33, 27);
        pnl_Tron.add(btn_Tron);
        
        btn_His = new JButton("");
        btn_His.setBorderPainted(false);
        btn_His.setBackground(Color.WHITE);
        btn_His.setIcon(new ImageIcon("image\\download.png"));
        btn_His.setBounds(548, 60, 33, 27);
        pnl_His.add(btn_His);
        
        btn_Plot = new JButton("");
        btn_Plot.setBounds(1150, 60, 33, 27);
        pnl_Plot.add(btn_Plot);
        btn_Plot.setBorderPainted(false);
        btn_Plot.setIcon(new ImageIcon("image\\download.png"));
        btn_Plot.setBackground(Color.WHITE);
        
        JPanel pnl_Chon_Tron = new JPanel();
        pnl_Chon_Tron.setLayout(null);
        pnl_Chon_Tron.setBorder(new TitledBorder(new EtchedBorder(EtchedBorder.LOWERED, new Color(255, 255, 255), new Color(160, 160, 160)), "Bi\u1EC3u \u0110\u1ED3 Tr\u00F2n C\u1EE7a", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
        pnl_Chon_Tron.setBackground(Color.WHITE);
        pnl_Chon_Tron.setBounds(10, 10, 386, 65);
        pnl_Tron.add(pnl_Chon_Tron);
        
        cmb_Tron = new JComboBox();
        cmb_Tron.setBounds(10, 20, 249, 35);
        pnl_Chon_Tron.add(cmb_Tron);
        cmb_Tron.setFont(new Font("Tahoma", Font.PLAIN, 17));
        cmb_Tron.setModel(new DefaultComboBoxModel(new String[] {"Tuổi của nhân viên", "Trình độ nhân viên"}));
        
        btn_Xem_Tron = new JButton("Xem");
        btn_Xem_Tron.setFont(new Font("Tahoma", Font.PLAIN, 16));
        btn_Xem_Tron.setBounds(305, 24, 71, 29);
        pnl_Chon_Tron.add(btn_Xem_Tron);
	
		
		
		
        JPanel pnl_Chon_His = new JPanel();
        pnl_Chon_His.setBounds(10, 10, 440, 65);
        pnl_His.add(pnl_Chon_His);
        pnl_Chon_His.setBackground(Color.WHITE);
        pnl_Chon_His.setBorder(new TitledBorder(new EtchedBorder(EtchedBorder.LOWERED, new Color(255, 255, 255), new Color(160, 160, 160)), "Bi\u1EC3u \u0110\u1ED3 Histogram Ti\u1EC1n L\u01B0\u01A1ng Tr\u1EA3 Cho T\u1EEBng Nh\u00E2n Vi\u00EAn Trong Th\u00E1ng ", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
        pnl_Chon_His.setLayout(null);
        
        JLabel lbl_Thang_His = new JLabel("Tháng");
        lbl_Thang_His.setBounds(56, 23, 46, 32);
        pnl_Chon_His.add(lbl_Thang_His);
        lbl_Thang_His.setHorizontalAlignment(SwingConstants.LEFT);
        lbl_Thang_His.setFont(new Font("Tahoma", Font.PLAIN, 14));
        spn_Thang_His = new JSpinner(spinnerModel_Thang_His);
        spn_Thang_His.setBounds(104, 23, 35, 32);
        spn_Thang_His.setFont(new Font("Tahoma", Font.PLAIN, 14));
        spn_Thang_His.setBackground(Color.WHITE);
        pnl_Chon_His.add(spn_Thang_His);
        
        JLabel lbl_Nam_His = new JLabel("Năm");
        lbl_Nam_His.setHorizontalAlignment(SwingConstants.LEFT);
        lbl_Nam_His.setFont(new Font("Tahoma", Font.PLAIN, 14));
        lbl_Nam_His.setBounds(176, 23, 36, 32);
        pnl_Chon_His.add(lbl_Nam_His);
        spn_Year_His = new JSpinner(spinnerModel_Nam_His);
        spn_Year_His.setFont(new Font("Tahoma", Font.PLAIN, 14));
        spn_Year_His.setBackground(Color.WHITE);
        spn_Year_His.setBounds(213, 23, 64, 32);
        pnl_Chon_His.add(spn_Year_His);
        
        btn_Xem_His = new JButton("Xem");
        btn_Xem_His.setFont(new Font("Tahoma", Font.PLAIN, 16));
        btn_Xem_His.setBounds(354, 23, 71, 29);
        pnl_Chon_His.add(btn_Xem_His);
        
        JPanel pnl_Chon_Plot = new JPanel();
        pnl_Chon_Plot.setLayout(null);
        pnl_Chon_Plot.setBorder(new TitledBorder(new EtchedBorder(EtchedBorder.LOWERED, new Color(255, 255, 255), new Color(160, 160, 160)), "Bi\u1EC3u \u0110\u1ED3 Bar T\u1ED5ng Ti\u1EC1n L\u01B0\u01A1ng Tr\u1EA3 Cho Nh\u00E2n Vi\u00EAn T\u1EEB Th\u00E1ng", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)));
        pnl_Chon_Plot.setBackground(Color.WHITE);
        pnl_Chon_Plot.setBounds(10, 10, 607, 65);
        pnl_Plot.add(pnl_Chon_Plot);
        
        JLabel lbl_TuThang_Plot = new JLabel("Từ tháng");
        lbl_TuThang_Plot.setHorizontalAlignment(SwingConstants.LEFT);
        lbl_TuThang_Plot.setFont(new Font("Tahoma", Font.PLAIN, 14));
        lbl_TuThang_Plot.setBounds(24, 21, 64, 32);
        pnl_Chon_Plot.add(lbl_TuThang_Plot);
        
        spn_TuThang_Plot = new JSpinner((SpinnerModel) spinnerModel_TuThang_Plot);
        spn_TuThang_Plot.setFont(new Font("Tahoma", Font.PLAIN, 14));
        spn_TuThang_Plot.setBackground(Color.WHITE);
        spn_TuThang_Plot.setBounds(95, 22, 35, 32);
        pnl_Chon_Plot.add(spn_TuThang_Plot);
        
        spn_TuYear_Plot = new JSpinner((SpinnerModel) spinnerModel_TuNam_Plot);
        spn_TuYear_Plot.setFont(new Font("Tahoma", Font.PLAIN, 14));
        spn_TuYear_Plot.setBackground(Color.WHITE);
        spn_TuYear_Plot.setBounds(132, 22, 64, 32);
        pnl_Chon_Plot.add(spn_TuYear_Plot);
        
        JLabel lbl_DenThang_Plot = new JLabel("Đến tháng");
        lbl_DenThang_Plot.setHorizontalAlignment(SwingConstants.LEFT);
        lbl_DenThang_Plot.setFont(new Font("Tahoma", Font.PLAIN, 14));
        lbl_DenThang_Plot.setBounds(282, 20, 72, 32);
        pnl_Chon_Plot.add(lbl_DenThang_Plot);
        
        spn_DenThang_Plot = new JSpinner((SpinnerModel) spinnerModel_DenThang_Plot);
        spn_DenThang_Plot.setFont(new Font("Tahoma", Font.PLAIN, 14));
        spn_DenThang_Plot.setBackground(Color.WHITE);
        spn_DenThang_Plot.setBounds(361, 21, 35, 32);
        pnl_Chon_Plot.add(spn_DenThang_Plot);
        
        spn_DenYear_Plot = new JSpinner((SpinnerModel) spinnerModel_DenNam_Plot);
        spn_DenYear_Plot.setFont(new Font("Tahoma", Font.PLAIN, 14));
        spn_DenYear_Plot.setBackground(Color.WHITE);
        spn_DenYear_Plot.setBounds(398, 21, 64, 32);
        pnl_Chon_Plot.add(spn_DenYear_Plot);
        
        btn_Xem_Plot = new JButton("Xem");
        btn_Xem_Plot.setFont(new Font("Tahoma", Font.PLAIN, 16));
        btn_Xem_Plot.setBounds(525, 21, 72, 29);
        pnl_Chon_Plot.add(btn_Xem_Plot);
        
        macDinh_Tron();
        macDinh_His();
        macDinh_Plot();
		
        btn_Xem_Plot.addActionListener(this);
        btn_Xem_His.addActionListener(this);
        btn_Xem_Tron.addActionListener(this);
        btn_His.addActionListener(this);
        btn_Tron.addActionListener(this);
        btn_Plot.addActionListener(this);
        cmb_Tron.addActionListener(this);
	}


	@Override
	public void actionPerformed(ActionEvent e) {
		Object o = e.getSource();
		if(o.equals(btn_Xem_Tron)) {
			if(cmb_Tron.getSelectedIndex()==0) {
				DefaultPieDataset dataset = new DefaultPieDataset();
				String title ="Biểu đồ tròn Tuổi của Nhân viên";
				
				List<Integer> listTuoi=null;
				try {
					 listTuoi = dao_ThongKe.layTuoi();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
				
		        dataset.setValue("Dưới 35 tuổi", listTuoi.get(0));
		        dataset.setValue("35-45 tuổi", listTuoi.get(1));
		        dataset.setValue("Trên 45 tuổi", listTuoi.get(2));
		       
		        pnl_Tron.remove(layBieuDo_Tron);
		        layBieuDo_Tron = layBieuDo_Tron(dataset,title);
		        pnl_Tron.add(layBieuDo_Tron);
				updateUI();
					       
			} else {
				DefaultPieDataset dataset = new DefaultPieDataset();
				String title ="Biểu đồ trình độ của Nhân viên";
				
				List<Integer> listTrinhDo=null;
				try {
					listTrinhDo = dao_ThongKe.layTrinhDo();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
				
		        dataset.setValue("Dưới đại học", listTrinhDo.get(0));
		        dataset.setValue("Đại học", listTrinhDo.get(1));
		        dataset.setValue("Trên đại học", listTrinhDo.get(2));
		        
		        pnl_Tron.remove(layBieuDo_Tron);
		        layBieuDo_Tron = layBieuDo_Tron(dataset,title);
		        pnl_Tron.add(layBieuDo_Tron);
				updateUI();
			}
			
		}
		else if(o.equals(btn_Xem_His)) {
			String ngayTinhLuong = Integer.parseInt(spn_Thang_His.getValue().toString())+"-"+Integer.parseInt(spn_Year_His.getValue().toString());
			String title ="Biểu đồ Histogram tiền lương trả cho nhân viên tháng "+ngayTinhLuong;
			List<Double> list=null;
			try {
				list = dao_ThongKe.layLuongThang(ngayTinhLuong);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			if(list == null) {
				pnl_His.remove(layBieuDo_His);
				updateUI();
				return;
			}
				
			double[] arr = list.stream().mapToDouble(Double::doubleValue).toArray();
	        
			HistogramDataset dataset = new HistogramDataset();
	        dataset.addSeries("Dữ liệu", arr, 5);
	        
	        pnl_His.remove(layBieuDo_His);
	        layBieuDo_His = layBieuDo_His(dataset,title);
	        pnl_His.add(layBieuDo_His);
	        updateUI();
		}
		else if(o.equals(btn_Xem_Plot)) {
			
			if(
				(spn_DenYear_Plot.getValue().toString().compareTo(spn_TuYear_Plot.getValue().toString())==0
					&& spn_DenThang_Plot.getValue().toString().compareTo(spn_TuThang_Plot.getValue().toString())<0
				) || spn_DenYear_Plot.getValue().toString().compareTo(spn_TuYear_Plot.getValue().toString())<0
				) {
				
				JOptionPane.showMessageDialog(this, "Thời gian 'đến' phải lớn lơn hoặc bằng thời gian 'từ'", "Phần Mềm Tính Lương", 2);
				return;
			} 
			
			DefaultCategoryDataset datase = new DefaultCategoryDataset();
			Map<String, Long> map = null;
			String title ="Biểu đồ Bar thể hiện tổng tiền lương đã trã cho nhân viên Từ "
					+spn_TuThang_Plot.getValue().toString()+"-"+spn_TuYear_Plot.getValue().toString()
					+" đến "
					+spn_DenThang_Plot.getValue().toString()+"-"+spn_DenYear_Plot.getValue().toString();
					
			try {
				map = dao_ThongKe.layTongLuong(
						Integer.parseInt(spn_TuThang_Plot.getValue().toString()),
						Integer.parseInt(spn_TuYear_Plot.getValue().toString()),
						Integer.parseInt(spn_DenThang_Plot.getValue().toString()),
						Integer.parseInt(spn_DenYear_Plot.getValue().toString()));
			} 
			catch (Exception e1) {
				e1.printStackTrace();
			}
			
			map.entrySet().forEach(i->{
				datase.addValue(i.getValue(), "Lương", i.getKey());
			});
			
			pnl_Plot.remove(layBieuDo_Plot);
			layBieuDo_Plot =layBieuDo_Plot(datase, title);
	        pnl_Plot.add(layBieuDo_Plot);
	        updateUI();
		}
		
		else if(o.equals(btn_Tron)) 
			xuatFile(chart_Tron);
		else if(o.equals(btn_His)) 
			xuatFile(chart_His);
		else if(o.equals(btn_Plot)) 
			xuatFile(chart_Plot);
    }
	
	private ChartPanel layBieuDo_Tron(DefaultPieDataset dataset, String title){
		chart_Tron = ChartFactory.createPieChart3D(
                title, 
                dataset,
                true, 
                true,
                false 
        );

        PiePlot3D plot = (PiePlot3D) chart_Tron.getPlot();
        plot.setStartAngle(0); 
        plot.setDirection(Rotation.CLOCKWISE); 

        ChartPanel cpnl_Tron = new ChartPanel(chart_Tron);
        cpnl_Tron.setBounds(43, 101, 487, 252);
        return cpnl_Tron;
	}
	
	private ChartPanel layBieuDo_His(HistogramDataset dataset, String title){
		chart_His = ChartFactory.createHistogram(
                title, 
                "Tiền lương", 
                "Tần số", 
                dataset, 
                PlotOrientation.VERTICAL, 
                true, 
                true, 
                false 
        );
        
        ChartPanel cpnl_His = new ChartPanel(chart_His);
        cpnl_His.setBounds(43, 97, 539, 301);
        cpnl_His.setPreferredSize(new Dimension(600, 400));
		return cpnl_His;
	}
	
	private ChartPanel layBieuDo_Plot(DefaultCategoryDataset dataset, String title){
		chart_Plot = ChartFactory.createBarChart(
                title, 
                "Tháng", 
                "Tổng lương", 
                dataset, 
                PlotOrientation.VERTICAL,
                true, 
                true, 
                false 
        );

		chart_Plot.getCategoryPlot().getRenderer().setSeriesPaint(0, new Color(0, 128, 0));

        ChartPanel chartPanel = new ChartPanel(chart_Plot);
        chartPanel.setBounds(35, 89, 1155, 383);
        chartPanel.setPreferredSize(new Dimension(600, 400));
		return chartPanel;
	}
	
	private void macDinh_Tron() {
		DefaultPieDataset dataset = new DefaultPieDataset();
		String title ="Biểu đồ tròn Tuổi của Nhân viên";
		
		List<Integer> listTuoi=null;
		try {
			 listTuoi = dao_ThongKe.layTuoi();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
        dataset.setValue("Dưới 35 tuổi", listTuoi.get(0));
        dataset.setValue("35-45 tuổi", listTuoi.get(1));
        dataset.setValue("Trên 45 tuổi", listTuoi.get(2));
        
        layBieuDo_Tron = layBieuDo_Tron(dataset,title);
        pnl_Tron.add(layBieuDo_Tron);
		updateUI();
	}
	
	private void macDinh_His() {
		String ngayTinhLuong = Integer.parseInt(spn_Thang_His.getValue().toString())+"-"+Integer.parseInt(spn_Year_His.getValue().toString());
		String title ="Biểu đồ Histogram tiền lương trả cho nhân viên tháng "+ngayTinhLuong;
		List<Double> list=null;
		try {
			list = dao_ThongKe.layLuongThang(ngayTinhLuong);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		double[] arr = list.stream().mapToDouble(Double::doubleValue).toArray();
        
		HistogramDataset dataset = new HistogramDataset();
        dataset.addSeries("Dữ liệu", arr, 5);
        
        layBieuDo_His = layBieuDo_His(dataset,title);
        pnl_His.add(layBieuDo_His);
        updateUI();
	}
	
	private void macDinh_Plot() {
		spn_TuThang_Plot.setValue(1);
		spn_TuYear_Plot.setValue(2023);
		spn_DenThang_Plot.setValue(7);
		spn_DenYear_Plot.setValue(2023);
		DefaultCategoryDataset datase = new DefaultCategoryDataset();
		Map<String, Long> map = null;
		String title ="Biểu đồ Bar thể hiện tổng tiền lương đã trả cho nhân viên Từ 1-2023 đến 7-2023";
		try {
			map = dao_ThongKe.layTongLuong(1,2023,7,2023);
		} 
		catch (Exception e1) {
			e1.printStackTrace();
		}
		
		map.entrySet().forEach(i->{
			datase.addValue(i.getValue(), "Lương", i.getKey());
		});
		
		layBieuDo_Plot =layBieuDo_Plot(datase, title);
        pnl_Plot.add(layBieuDo_Plot);
        updateUI();
	}
	
	// phải nhập đuôi png
	private void xuatFile(JFreeChart chart) {
		JFileChooser fileChooser = new JFileChooser();
        int result = fileChooser.showSaveDialog(null);
        if (result == JFileChooser.APPROVE_OPTION) { 
            File selectedFile = fileChooser.getSelectedFile(); 
            try {
				ChartUtilities.saveChartAsPNG(selectedFile, chart, 1280, 720);
				JOptionPane.showMessageDialog(this, "Lưu thành công", "Phần Mềm Tính Lương", 1);
			} catch (IOException e) {
				JOptionPane.showMessageDialog(this, e, "Phần Mềm Tính Lương", 2);
				e.printStackTrace();
			}
        } else 
        	JOptionPane.showMessageDialog(this, "Lưu thất bại", "Phần Mềm Tính Lương", 2);
    }
}
