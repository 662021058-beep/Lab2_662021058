import 'package:flutter/material.dart';

class Fristpage extends StatelessWidget {
  const Fristpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // เปลี่ยนพื้นหลังแอพให้เป็นสีเทาอ่อนๆ เพื่อให้การ์ดสีขาวเด่นขึ้น
      appBar: AppBar(
        title: const Text("Profile Anaphat", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.purple[800], // สีหัวข้อ
        foregroundColor: Colors.white, // สีตัวหนังสือในหัวข้อ
        elevation: 0,
      ),
      body: SingleChildScrollView( // ใช้ตัวนี้เผื่อหน้าจอมือถือเล็ก ข้อมูลจะได้เลื่อนลงมาดูได้
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            children: [
              // --- ส่วนรูปภาพ ---
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.purple, width: 4), // เพิ่มขอบสี
                  boxShadow: [
                     BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 10, offset: Offset(0, 5))
                  ]
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/earth.png"),
                  radius: 100, 
                ),
              ),
              
              const SizedBox(height: 20),
              
              // --- ส่วนชื่อ (แยกออกมาให้เด่น) ---
              const Text(
                "Anaphat Poolnual",
                style: TextStyle(
                  fontSize: 28, 
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                  letterSpacing: 1.0,
                ),
              ),
              const Text(
                "Student ID: 662021058",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  letterSpacing: 1.2,
                ),
              ),

              

              const SizedBox(height: 30), // เว้นระยะห่างก่อนเข้าสู่ข้อมูลติดต่อ

              // --- ส่วนข้อมูล (ใช้ Card แทน Row ธรรมดา) ---
              
              // 1. วันเกิด
              _buildInfoCard(Icons.cake, "Birth Date", "10 September 2004"),
              
              // 2. เบอร์โทร
              _buildInfoCard(Icons.phone, "Phone Number", "091-865-8003"),
              
              // 3. อีเมล
              _buildInfoCard(Icons.email, "Email Address", "662021058@tsu.ac.th"),
            ],
          ),
        ),
      ),
    );
  }

  // --- ฟังก์ชันสร้างการ์ดข้อมูล (ช่วยลดโค้ดที่ซ้ำกัน) ---
  Widget _buildInfoCard(IconData icon, String title, String subtitle) {
    return Card(
      elevation: 4, // ความนูนของการ์ด
      margin: const EdgeInsets.only(bottom: 15), // เว้นระยะห่างแต่ละการ์ด
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.purple.withOpacity(0.1), // พื้นหลังไอคอนจางๆ แบบที่เคยขอ
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.purple),
        ),
        title: Text(title, style: const TextStyle(fontSize: 14, color: Colors.grey)),
        subtitle: Text(subtitle, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
      ),
    );
  }
}