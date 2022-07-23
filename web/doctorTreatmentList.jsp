<%-- 
    Document   : feedback
    Created on : Sep 6, 2021, 6:01:29 PM
    Author     : HP
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    if (session.getAttribute("d_id") != null) {
        //String d_id = (String)session.getAttribute("d_id");
%>
<%
    String p_id = request.getParameter("id");

    Class.forName("com.mysql.jdbc.Driver");

    String mysqlURL = "jdbc:mysql://localhost:3306/hssra?user=root";
    Connection con = DriverManager.getConnection(mysqlURL);
    Statement stm = con.createStatement();

    String sql = "SELECT * FROM treatment";
    ResultSet rs = stm.executeQuery(sql);


%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor List | Medico</title>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>ADMIN</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="assests/css/AdminStyle.css">

        <style>
            .btn2 {
                padding: 15px 30px;
                font-size: 16px;
                font-weight: 600;
                letter-spacing: 1px;
                color: #092a49;
                background: none;
                border: 3px solid #65c9cd;
                border-radius: 15px;
                transition: .3s;
                border-radius: 10px
            }

            .btn2:hover {
                color: white;
                background:#65c9cd;
            }
            .container1 {
                display: flex;

                /* OPTIONAL: Reverse the order of image and content */
                flex-direction: row-reverse;
                /* OPTIONAL: Spacing between items */
                margin: 16px 0;
                box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px 6px;

            }

            .container__image {
                width: 180px;
                height: 180px;
                padding: 10px;
            }
            .container__image img{
                border: 5px solid #65c9cd;
                border-radius: 50%;
                height: 100%;
                width: 100%;
            }
            .container__feature {
                /* Take the remaining width */
                flex: 1;
                text-align: left;
                padding: 10px;
                margin-left: 20px;
            }


        </style>
    </head>
    <body>
        <%@include file="doctorHeader.jsp" %>
        <br>
        <br>
        <br>
        <br>

        <section id="doctors" class="doctors section-bg">
            <div class="container" data-aos="fade-up">
                <div>
                    <a class="btn btn-info" href="doctorPenal.jsp" style='font-size:20px'><i class='fas fa-arrow-left'></i>&nbsp;Back</a>

                </div>
                <div class="section-title">
                    <h2>Treatment History</h2>
                    <select id="mylist" onchange="filter()" Style="background:#3fbbc0;border-radius: 10px; width: 150px" >
                        <option>Select Doctor</option>
                        <%                        //String p_id = request.getParameter("id");
                            Class.forName("com.mysql.jdbc.Driver");

                            String mysqlURL5 = "jdbc:mysql://localhost:3306/hssra?user=root";
                            Connection con5 = DriverManager.getConnection(mysqlURL5);
                            Statement stm5 = con5.createStatement();

                            String sql5 = "SELECT * FROM Doctor";
                            ResultSet rs5 = stm5.executeQuery(sql5);
                            while (rs5.next()) {
                                String d_id = rs5.getString(1);
                                String dFname = rs5.getString(2);
                                String dLname = rs5.getString(3);
                        %>

                        <option><% out.print(dFname);%></option>

                        <%                            }
                            con5.close();
                        %>


                    </select>
                    <input id="myInput" onkeyup="myFunction()" type="text" placeholder="Search Patient Name.." Style="background:#3fbbc0;border-radius: 10px;">
                    <input type="submit" value="sort by ID" onclick="sortTable()" style="background:#3fbbc0;border-radius: 10px; width: 150px"/>
                    <hr>
                    <table class="table table-striped" id="myTable">
                        <thead>
                            <tr>
                                <th>Sr No.</th>
                                <th>Patient ID</th>
                                <th>Patient Name</th>

                                <th>Doctor</th>

                                <th>Treatment</th>
                                <th>Medicine</th>
                                <th>Status</th>

                            </tr>
                        </thead>
                        <tbody>
                            <%                                int i = 1;
                                while (rs.next()) {
                                    String pid = rs.getString(1);
                                    String p_name = rs.getString(2);
                                    String d_id = rs.getString(3);
                                    String doctor = rs.getString(4);
                                    String treatment = rs.getString(5);
                                    String medicine = rs.getString(6);


                            %>

                            <tr id="myList">
                                <td ><% out.print(i); %></td>
                                <td><% out.print(pid); %></td>
                                <td ><% out.print(p_name); %></td>



                                <td><% out.print(doctor); %></td>


                                <td><% out.print(treatment); %></td>
                                <td><% out.print(medicine); %></td>


                                <td>
                                    <input type="checkbox" checked="" disabled>
                                </td>


                            </tr>
                            <%
                                    i++;
                                }
                                con.close();
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>

        <!-- ======= Footer ======= -->
        <%@ include file = "footer.jsp" %>
        <div id="preloader"></div>
        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
        <script>
            function myFunction() {
                var input, filter, table, tr, td, i, txtValue;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                table = document.getElementById("myTable");
                tr = table.getElementsByTagName("tr");
                for (i = 0; i < tr.length; i++) {
                    td = tr[i].getElementsByTagName("td")[2];
                    td1 = tr[i].getElementsByTagName("td")[3];
                    if (td || td1) {
                        txtValue = td.textContent || td.innerText;
                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
                            tr[i].style.display = "";
                        } else {
                            tr[i].style.display = "none";
                        }
                    }
                }
            }
            function filter() {
                var input, filter, table, tr, td, i;
                input = document.getElementById("mylist");
                filter = input.value.toUpperCase();
                table = document.getElementById("myTable");
                tr = table.getElementsByTagName("tr");
                for (i = 0; i < tr.length; i++) {
                    td = tr[i].getElementsByTagName("td")[3];
                    if (td) {
                        if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                            tr[i].style.display = "";
                        } else {
                            tr[i].style.display = "none";
                        }
                    }
                }
            }
            function sortTable() {
                var table, rows, switching, i, x, y, shouldSwitch;
                table = document.getElementById("myTable");
                switching = true;
                /*Make a loop that will continue until
                 no switching has been done:*/
                while (switching) {
                    //start by saying: no switching is done:
                    switching = false;
                    rows = table.rows;
                    /*Loop through all table rows (except the
                     first, which contains table headers):*/
                    for (i = 1; i < (rows.length - 1); i++) {
                        //start by saying there should be no switching:
                        shouldSwitch = false;
                        /*Get the two elements you want to compare,
                         one from current row and one from the next:*/
                        x = rows[i].getElementsByTagName("TD")[2];
                        y = rows[i + 1].getElementsByTagName("TD")[2];
                        //check if the two rows should switch place:
                        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                            //if so, mark as a switch and break the loop:
                            shouldSwitch = true;
                            break;
                        }
                    }
                    if (shouldSwitch) {
                        /*If a switch has been marked, make the switch
                         and mark that a switch has been done:*/
                        rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
                        switching = true;
                    }
                }
            }
        </script>
        <!-- Vendor JS Files -->
        <script src="assets/vendor/aos/aos.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>
        <script src="assets/vendor/purecounter/purecounter.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>

        <!-- End Footer -->
    </body>
</html>
<%    } else {
        response.sendRedirect("index.jsp");
    }

%>