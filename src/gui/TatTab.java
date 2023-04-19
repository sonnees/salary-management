package gui;

import javax.swing.*;
import javax.swing.plaf.basic.BasicButtonUI;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class TatTab extends JTabbedPane {

    public TatTab() {
        super();
    }

    @Override
    public void addTab(String title, final Component content) {
        super.addTab(title, content);

        int tabIndex = indexOfComponent(content);
        
        // Tạo một JPanel để chứa title của tab
        JPanel tabTitlePanel = new JPanel(new FlowLayout(FlowLayout.LEFT, 0, 0));
        tabTitlePanel.setOpaque(false);

        // Tạo một JLabel để hiển thị title của tab
        JLabel titleLabel = new JLabel(title);
        tabTitlePanel.add(titleLabel);

        // Tạo một JButton với biểu tượng 'x' để đóng tab
        JButton closeButton = new JButton("");
        closeButton.setIcon(new ImageIcon("image\\close.png"));
        closeButton.setPreferredSize(new Dimension(25, closeButton.getPreferredSize().height));
        closeButton.setBorderPainted(false);
        closeButton.setUI(new BasicButtonUI()); // Xóa giao diện mặc định của JButton
        closeButton.setContentAreaFilled(false); // Xóa phần nền của JButton
        closeButton.setFocusable(false); // Loại bỏ khả năng nhận fokus của JButton

        // Đặt ActionListener cho JButton để xử lý sự kiện khi nút được nhấn
        closeButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                int tabIndex = indexOfComponent(content);
                if (tabIndex != -1) {
                    removeTabAt(tabIndex);
                }
            }
        });
        
        tabTitlePanel.add(closeButton);
        setTabComponentAt(tabIndex, tabTitlePanel);
    }
}