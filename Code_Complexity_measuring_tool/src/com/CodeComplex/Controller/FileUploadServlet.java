package com.CodeComplex.Controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ResourceBundle;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/FileUploadServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10MB
		maxFileSize = 1024 * 1024 * 50, // 50 MB
		maxRequestSize = 1024 * 1024 * 100) // 100MB

public class FileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 205242440643911308L;

	/**
	 * * Directory where uploaded files will be saved, its relative to * the web
	 * application directory.
	 */
	private static final String UPLOAD_DIR = "uploads";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FileUploadServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// gets absolute path of the web application
		String applicationPath = request.getServletContext().getRealPath("");
		// constructs path of the directory to save uploaded file
		String uploadFilePath = applicationPath + File.separator + UPLOAD_DIR;
		// String uploadFilePath =
		// "E:\\Users\\Acer\\git\\repository2\\Code_Complexity_measuring_tool\\WebContent\\uploads";

		// creates the save directory if it does not exists
		File fileSaveDir = new File(uploadFilePath);
		if (!fileSaveDir.exists()) {
			fileSaveDir.mkdirs();
		}

		System.out.println("Upload File Directory=" + fileSaveDir.getAbsolutePath());

		String fileName = null;
		// Get all the parts from request and write it to the file on server
		for (Part part : request.getParts()) {
			fileName = getFileName(part);
			if (fileName != null) {
				File f = new File(fileName);
				part.write(uploadFilePath + File.separator + f.getName());
			}
		}

		// request.setAttribute("message", fileName + " File uploaded successfully!");
		// getServletContext().getRequestDispatcher("/response.jsp").forward(
		// request, response);
		if (request.getParameter("factor").equals("Size")) {

			calcComplexitySize(request, response);

		} else if (request.getParameter("factor").equals("Variable")) {

			calcComplexityVariables(request, response);

		} else if (request.getParameter("factor").equals("Methods")) {

			calcComplexityMethods(request, response);

		}
	}

	/** * Utility method to get file name from HTTP header content-disposition */
	private String getFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		System.out.println("content-disposition header= " + contentDisp);
		String[] tokens = contentDisp.split(";");
		for (String token : tokens) {

			if (token.trim().startsWith("filename")) {
				return token.substring(token.indexOf("=") + 2, token.length() - 1);
			}
		}
		return null;
	}

	public void calcComplexitySize(HttpServletRequest request, HttpServletResponse response) throws IOException {

		File file = new File(
				"F:\\ITPM Project\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Code_Complexity_measuring_tool\\uploads\\");
		File[] files = file.listFiles();
		BufferedReader reader;
		String statementLine;
		String[] keyWords = { "abstract", "assert", "break", "catch", "class", "const", "continue", "default", "do",
				"else", "enum", "extends", "final", "finally", "goto", "implements", "instanceof",
				"interface", "native", "new", "package", "private", "protected", "public", "return", "static",
				"strictfp", "super", "synchronized", "this", "throw", "throws", "transient", "try", "void",
				"volatile" };
		String[] idKey = { "boolean", "double", "float", "int", "long", "String", "void", "print", "println", "out",
				"System", "Scanner", "class", "extends", "implements" };
		String[] operators = { "+", "-", "*", "/", "%", "++", "--", "==", "!=", ">=", "<", ">", "<=", "&&", "||", "!",
				"|", "^", "~", "<<", ">>", ">>>", "<<<", "->", "::", "+=", "-=", "*=", "/=", "=", ">>>=", "|=", "&=",
				"%=", "<<=", ">>=", "^=" };
		int Cs = 0, Wkw = 1, Nkw = 0, Wid = 1, Nid = 0, Wop = 1, Nop = 0, Wnv = 1, Nnv = 0, Wsl = 1, Nsl = 0;
		

		StringBuilder sb = new StringBuilder();
		sb.append("<html>");
		sb.append("<head>");
		sb.append("</head>");

		for (File f : files) {

			// System.out.println(f.getName());
			

			sb.append("<table class = \"table\">");
			sb.append("<thead>");
			sb.append("<tr>");
			sb.append("<th scope=\"col\">Line No.</th>");
			sb.append("<th scope=\"col\">Program Statement</th>");
			sb.append("<th scope=\"col\">Nkw</th>");
			sb.append("<th scope=\"col\">Nid</th>");
			sb.append("<th scope=\"col\">Nop</th>");
			sb.append("<th scope=\"col\">Nnv</th>");
			sb.append("<th scope=\"col\">Nsl</th>");
			sb.append("<th scope=\"col\">Cs</th>");
			sb.append("</tr>");
			sb.append("</thead>");

			try {

				reader = new BufferedReader(new FileReader(
						"F:\\ITPM Project\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Code_Complexity_measuring_tool\\uploads\\"
								+ f.getName()));

				String line = reader.readLine();
				int lineNo = 1;

				while (line != null) {
					sb.append("<tbody>");
					sb.append("<tr>");
					System.out.print(lineNo);
					sb.append("<td>" + lineNo);
					sb.append("</td>");
					System.out.print("\t");
					System.out.print(line);
					sb.append("<td>" + line);
					sb.append("</td>");

					statementLine = line;
					String[] arrOfStr = statementLine.split("[() ,.;/&\\s]+");

					if (line.startsWith("//") || line.startsWith("import") || line.contains("//")) {

						Nkw = 0;
						Nid = 0;
						Nop = 0;
						Nnv = 0;
						Nsl = 0;

					} else {
						// check each word one by one
						for (String check : arrOfStr) {
							// System.out.println(check);
							// Checking for keywords
							for (String element : keyWords) {
								// System.out.print(check);
								if (element.equals(check) || check.equals("\t \t" + element)) {

									Nkw++;

								}

							}
							// check identifiers
							for (String id : idKey) {

								if (id.equals(check) || check.equals("\t" + id)) {

									Nid++;
								}

							}

							// check for operators
							for (String op : operators) {
								// System.out.println(check);
								if (op.equals(check)) {

									Nop++;

								}

							}

							// check for numeric values

							boolean numeric = true;

							numeric = check.matches("-?\\d+(\\.\\d+)?");

							if (numeric) {

								Nnv++;

							}

						}
					}
					// check for strings literals
					if (line.contains("\"")) {

						Nsl++;

					}

					Cs = (Wkw * Nkw) + (Wid * Nid) + (Wop * Nop) + (Wnv * Nnv) + (Wsl * Nsl);

					System.out.print("\t");
					System.out.print(Nkw);

					sb.append("<td>" + Nkw);
					sb.append("</td>");

					System.out.print("\t");
					System.out.print(Nid);

					sb.append("<td>" + Nid);
					sb.append("</td>");

					System.out.print("\t");
					System.out.print(Nop);

					sb.append("<td>" + Nop);
					sb.append("</td>");

					System.out.print("\t");
					System.out.print(Nnv);

					sb.append("<td>" + Nnv);
					sb.append("</td>");

					System.out.print("\t");
					System.out.print(Nsl);

					sb.append("<td>" + Nsl);
					sb.append("</td>");

					sb.append("<td>" + Cs);
					sb.append("</td>");

					line = reader.readLine();// reads next line
					lineNo++;
					System.out.println();
					Nkw = 0;
					Nid = 0;
					Nop = 0;
					Nnv = 0;
					Nsl = 0;
					sb.append("</tr>");
					sb.append("</tbody>");
				}
				reader.close();
			} catch (IOException e) {

				e.printStackTrace();
			}

			sb.append("</table>");

		}

		sb.append("</body>");
		sb.append("</html>");

		request.setAttribute("table", sb.toString());

		System.out.println(sb.toString());
		try {
			getServletContext().getRequestDispatcher("/sizeResult.jsp").forward(request, response);
		} catch (ServletException e) { // TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) { // TODO Auto-generated catchblock
			e.printStackTrace();
		}

	}

	public void calcComplexityVariables(HttpServletRequest request, HttpServletResponse response) {

		File file = new File(
				"F:\\ITPM Project\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Code_Complexity_measuring_tool\\uploads\\");
		File[] files = file.listFiles();
		BufferedReader reader;
		String statementLine;
		int lineNo = 1;
		int counter = 0;
		int Cv = 0, Wvs = 0, Wpdtv = 1, Npdtv = 0, Wcdtv = 2, Ncdtv = 0, globVar = 0, locVar = 0, Wgv = 2, Wlv = 1;

		StringBuilder sb = new StringBuilder();
		sb.append("<html>");
		sb.append("<head>");
		sb.append("</head>");

		for (File f : files) {

			sb.append("<table class = \"table\">");
			sb.append("<thead>");
			sb.append("<tr>");
			sb.append("<th scope=\"col\">Line No.</th>");
			sb.append("<th scope=\"col\">Program Statement</th>");
			sb.append("<th scope=\"col\">Wvs</th>");
			sb.append("<th scope=\"col\">Npdtv</th>");
			sb.append("<th scope=\"col\">Ncdtv</th>");
			sb.append("<th scope=\"col\">Cv</th>");
			sb.append("</tr>");
			sb.append("</thead>");

			try {

				reader = new BufferedReader(new FileReader(
						"F:\\ITPM Project\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Code_Complexity_measuring_tool\\uploads\\"
								+ f.getName()));
				String line = reader.readLine();

				while (line != null) {

					sb.append("<tbody>");
					sb.append("<tr>");

					System.out.print(lineNo);

					sb.append("<td>" + lineNo);
					sb.append("</td>");

					System.out.print("\t");
					System.out.print(line);

					sb.append("<td>" + line);
					sb.append("</td>");

					// statementLine = line;
					// String[] arrOfStr = statementLine.split("[() ,.;/&\\s]+");
					if (line.startsWith("//") || line.startsWith("imports") || line.contains("//")) {

						Wvs = 0;
						Npdtv = 0;
						Ncdtv = 0;

					} else {

						if ((line.contains("void") && line.contains("(") && line.contains(")"))
								|| (line.contains("int") && line.contains("(") && line.contains(")"))) {

							do {
								line = reader.readLine();
								lineNo++;
								System.out.println();
								System.out.print(lineNo);
								System.out.print("\t");
								System.out.print(line);

								sb.append("<td>" + 0);
								sb.append("</td>");
								sb.append("<td>" + 0);
								sb.append("</td>");
								sb.append("<td>" + 0);
								sb.append("</td>");
								sb.append("<td>" + 0);
								sb.append("</td>");
								sb.append("</tr>");
								
								sb.append("<td>" + lineNo);
								sb.append("</td>");

								sb.append("<td>" + line);
								sb.append("</td>");

								if (line.contains("int") || line.contains("String") || line.contains("double")
										|| line.contains("float")) {

									Wvs = 1;
									Npdtv++;
									Cv = Wvs * (Wpdtv * Npdtv) + Wvs * (Wcdtv * Ncdtv);
									/*
									 * System.out.print("\t"); System.out.print(Wvs); System.out.print("\t");
									 * System.out.print(Npdtv); System.out.print("\t"); System.out.print(Ncdtv);
									 * System.out.print("\t"); System.out.print(Cv);
									 */
								}

							} while (line.contains("}") || line.contains("if") || line.contains("else if")
									|| line.contains("while") || line.contains("do") || line.contains("for"));

						} else if ((line.contains("int") && line.contains("="))
								|| (line.contains("boolean") && line.contains("="))
								|| (line.contains("double") && line.contains("="))
								|| (line.contains("float") && line.contains("="))) {

							Wvs = 2;
							Npdtv++;

						}

						if (line.contains("if") || line.contains("else if") || line.contains("while")
								|| line.contains("do") || line.contains("for")) {

							do {

								line = reader.readLine();
								lineNo++;
								System.out.println();
								System.out.print(lineNo);
								System.out.print("\t");
								System.out.print(line);

								sb.append("<td>" + 0);
								sb.append("</td>");
								sb.append("<td>" + 0);
								sb.append("</td>");
								sb.append("<td>" + 0);
								sb.append("</td>");
								sb.append("<td>" + 0);
								sb.append("</td>");
								sb.append("</tr>");
								
								sb.append("<td>" + lineNo);
								sb.append("</td>");

								sb.append("<td>" + line);
								sb.append("</td>");

							} while (line.contains("}"));

						}
					}

					Cv = Wvs * (Wpdtv * Npdtv) + Wvs * (Wcdtv * Ncdtv);

					System.out.print("\t");
					System.out.print(Wvs);
					System.out.print("\t");
					System.out.print(Npdtv);
					System.out.print("\t");
					System.out.print(Ncdtv);
					System.out.print("\t");
					System.out.print(Cv);

					sb.append("<td>" + Wvs);
					sb.append("</td>");

					sb.append("<td>" + Npdtv);
					sb.append("</td>");

					sb.append("<td>" + Ncdtv);
					sb.append("</td>");

					sb.append("<td>" + Cv);
					sb.append("</td>");

					line = reader.readLine();// reads next line
					lineNo++;
					globVar = 0;
					Npdtv = 0;
					Wvs = 0;
					Ncdtv = 0;
					locVar = 0;
					System.out.println();

					sb.append("</tr>");
					sb.append("</tbody>");

				}
				reader.close();

			} catch (IOException e) {

				e.printStackTrace();
			}

			sb.append("</table>");

		}

		sb.append("</body>");
		sb.append("</html>");

		request.setAttribute("table", sb.toString());

		System.out.println(sb.toString());
		try {
			getServletContext().getRequestDispatcher("/variableResult.jsp").forward(request, response);
		} catch (ServletException e) { // TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) { // TODO Auto-generated catchblock
			e.printStackTrace();
		}

	}

	public void calcComplexityMethods(HttpServletRequest request, HttpServletResponse response) {

		File file = new File(
				"F:\\ITPM Project\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Code_Complexity_measuring_tool\\uploads\\");
		File[] files = file.listFiles();
		BufferedReader reader;
		String statementLine;
		int lineNo = 1;
		int Cm = 0, Wmrt = 0, Wpdtp = 0, Npdtp = 0, Wcdtp = 0, Ncdtp = 0;
		String premRet = "(public|private|protected)( byte| short | int| long| float | double | boolean | char | String)(.*?)(\\))";
		String compRet = "(public|private|protected)( int| long | float | double | boolean | String)(.*?)(\\))";
		String voidRet = "(public|private|protected|public static|private static |protected static)( void)(.*?)(\\))";
		Pattern pattern1 = Pattern.compile(premRet);
		Pattern pattern2 = Pattern.compile(compRet);
		Pattern pattern3 = Pattern.compile(voidRet);

		StringBuilder sb = new StringBuilder();
		sb.append("<html>");
		sb.append("<head>");
		sb.append("</head>");
		
		for (File f : files) {
			
			
			sb.append("<table class = \"table\">");
			sb.append("<thead>");
			sb.append("<tr>");
			sb.append("<th scope=\"col\">Line No.</th>");
			sb.append("<th scope=\"col\">Program Statement</th>");
			sb.append("<th scope=\"col\">Wmrt</th>");
			sb.append("<th scope=\"col\">Npdtp</th>");
			sb.append("<th scope=\"col\">Ncdtp</th>");
			sb.append("<th scope=\"col\">Cm</th>");
			sb.append("</tr>");
			sb.append("</thead>");
			

			try {

				reader = new BufferedReader(new FileReader(
						"F:\\ITPM Project\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Code_Complexity_measuring_tool\\uploads\\"
								+ f.getName()));
				String line = reader.readLine();

				while (line != null) {
					
					sb.append("<tbody>");
					sb.append("<tr>");
					
					System.out.print(lineNo);
					request.setAttribute("lineNo", lineNo);
					System.out.print("\t");
					System.out.print(line);
					request.setAttribute("lineS", line);
					
					sb.append("<td>" + lineNo);
					sb.append("</td>");
					sb.append("<td>" + line);
					sb.append("</td>");

					Matcher matcher1 = pattern1.matcher(line);
					Matcher matcher2 = pattern2.matcher(line);
					Matcher matcher3 = pattern3.matcher(line);

					if (line.startsWith("//") || line.startsWith("imports")) {

						Wmrt = 0;
						Wcdtp = 0;
						Ncdtp = 0;
						Wpdtp = 0;
						Npdtp = 0;

					} else {

						if (matcher1.find()) {

							Wmrt = 1;

							if (line.contains("[]")) {

								Wcdtp = 2;
								Ncdtp++;

							} else if (line.contains("(int )")) {

								Wpdtp = 1;
								Npdtp++;

							} else {

								Wcdtp = 0;
								Ncdtp = 0;
								Wpdtp = 0;
								Npdtp = 0;

							}

						} else if (matcher2.find() && line.contains("[]")) {

							Wmrt = 2;

							if (line.contains("[]")) {

								Wcdtp = 2;
								Ncdtp++;

							} else if (line.contains("(int )")) {

								Wpdtp = 1;
								Npdtp++;

							} else {

								Wcdtp = 0;
								Ncdtp = 0;
								Wpdtp = 0;
								Npdtp = 0;

							}

						} else if (matcher3.find()) {

							Wmrt = 0;

							if (line.contains("[]")) {

								Wcdtp = 2;
								Ncdtp++;

							} else if (line.contains("(int )")) {

								Wpdtp = 1;
								Npdtp++;

							} else {

								Wcdtp = 0;
								Ncdtp = 0;
								Wpdtp = 0;
								Npdtp = 0;

							}

						}
					}

					Cm = Wmrt + (Wpdtp * Npdtp) + (Wcdtp * Ncdtp);
					
					sb.append("<td>" + Wmrt);
					sb.append("</td>");
					sb.append("<td>" + Npdtp);
					sb.append("</td>");
					sb.append("<td>" + Ncdtp);
					sb.append("</td>");
					sb.append("<td>" + Cm);
					sb.append("</td>");
					
					line = reader.readLine();// reads next line
					lineNo++;
					
					Wmrt = 0;
					Npdtp = 0;
					Ncdtp = 0;
					Cm = 0;

					sb.append("</tr>");
					sb.append("</tbody>");
					
				}
				reader.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			sb.append("</table>");
			
		}
		
		sb.append("</body>");
		sb.append("</html>");

		request.setAttribute("table", sb.toString());

		System.out.println(sb.toString());
		try {
			getServletContext().getRequestDispatcher("/methodResult.jsp").forward(request, response);
		} catch (ServletException e) { // TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) { // TODO Auto-generated catchblock
			e.printStackTrace();
		}
		
	}

}
