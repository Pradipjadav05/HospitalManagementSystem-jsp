<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    if (session.getAttribute("d_id") != null) {
        //String d_id = (String)session.getAttribute("d_id");
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Appointment List | Medico</title>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

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
                background:#3fbbc0;
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


        <section id="doctors" class="doctors section-bg">
            <div>
                <a class="btn btn-info" href="doctorPenal.jsp" style='font-size:20px'><i class='fas fa-arrow-left'></i>&nbsp;Back</a>

            </div>
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Appointment History</h2>
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
                    <input id="myInput" onkeyup="myFunction()" type="text" placeholder="Search patient name.." Style="background:#3fbbc0;border-radius: 10px;" >
                    <input type="submit" value="Sort by ID" onclick="sortTable()" Style="background:#3fbbc0;border-radius: 10px; width: 150px" />
                    <br>
                    <%                    String p_id = request.getParameter("id");

                        Class.forName("com.mysql.jdbc.Driver");

                        String mysqlURL = "jdbc:mysql://localhost:3306/hssra?user=root";
                        Connection con = DriverManager.getConnection(mysqlURL);
                        Statement stm = con.createStatement();

                        String sql = "SELECT * FROM appointment";
                        ResultSet rs = stm.executeQuery(sql);


                    %>
                    <%                        Class.forName("com.mysql.jdbc.Driver");

                        String mysqlURL1 = "jdbc:mysql://localhost:3306/hssra?user=root";
                        Connection con1 = DriverManager.getConnection(mysqlURL);
                        Statement stm1 = con.createStatement();

                        String sq1l = "SELECT * FROM doctor";
                        ResultSet rs1 = stm1.executeQuery(sq1l);
                    %>

                    <br>
                    <table class="table table-striped" id="myTable">
                        <thead>
                            <tr>
                                <th>Sr No.</th>
                                <th>Appointment ID</th>
                                <th>Patient Name</th>
                                <th>Doctor</th>
                                <th>Email</th>
                                <th>Mobile</th>

                                <th>Date</th>

                                <th>time</th>



                            </tr>
                        </thead>
                        <tbody>
                            <%                                int i = 1;
                                while (rs.next()) {

                                    String id = rs.getString(2);
                                    String p_name = rs.getString(3);
                                    String email = rs.getString(4);
                                    String mobile = rs.getString(5);
                                    String date = rs.getString(6);
                                    String time = rs.getString(7);
                                    String d_id = rs.getString(8);

                            %>

                            <tr id="myList">
                                <td name="id" ><% out.print(i); %></td>
                                <td><% out.print(id); %></td>
                                <td ><% out.print(p_name); %></td>

                                <%
                                    Statement stm2 = con.createStatement();

                                    String sql2 = "SELECT * FROM doctor where d_id = '" + d_id + "' ";
                                    ResultSet rs2 = stm2.executeQuery(sql2);
                                    if (rs2.next()) {
                                        String dfname = rs2.getString(2);
                                        String dlname = rs2.getString(3);

                                %>
                                <td><% out.print(dfname + " " + dlname); %></td>
                                <%
                                    }
                                %>

                                <td><% out.print(email); %></td>


                                <td><% out.print(mobile); %></td>
                                <td><% out.print(date); %></td>
                                <td><% out.print(time); %></td>


                            </tr>
                            <%

                                    i++;
                                }

                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>

        <%            con.close();
        %>
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

                    if (td) {
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
                        x = rows[i].getElementsByTagName("TD")[1];
                        y = rows[i + 1].getElementsByTagName("TD")[1];
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