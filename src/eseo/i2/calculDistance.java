package eseo.i2;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class calculDistance
 */
@WebServlet("/calculDistance")
public class calculDistance extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public calculDistance() {
		super();
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		ArrayList<Ville> villes = (ArrayList<Ville>) session.getAttribute("villes");
		String ville1 = request.getParameter("ville1");
		String ville2 = request.getParameter("ville2");
		session.setAttribute("ville1", ville1);
		session.setAttribute("ville2", ville2);

		String latitude1 = null;
		String longitude1 = null;
		String latitude2 = null;
		String longitude2 = null;

		for (Ville ville : villes) {
			if (ville.getNomCommune().equals(ville1)) {
				latitude1 = ville.getLatitude();
				longitude1 = ville.getLongitude();
			}
			if (ville.getNomCommune().equals(ville2)) {
				latitude2 = ville.getLatitude();
				longitude2 = ville.getLongitude();
			}
		}

		DecimalFormat df = new DecimalFormat("###.##");
		double distance = this.calculDistance(latitude1, longitude1, latitude2, longitude2);
		session.setAttribute("distance", df.format(distance));
		RequestDispatcher req = request.getRequestDispatcher("AffichageDistance.jsp");
		req.forward(request, response);
	}

	public double calculDistance(String latitude1, String longitude1, String latitude2, String longitude2) {
		double b2 = Double.parseDouble(latitude1);
		double c2 = Double.parseDouble(longitude1);

		double b3 = Double.parseDouble(latitude2);
		double c3 = Double.parseDouble(longitude2);

		double distance = Math.acos(Math.sin(Math.toRadians(b2)) * Math.sin(Math.toRadians(b3))
				+ Math.cos(Math.toRadians(b2)) * Math.cos(Math.toRadians(b3)) * Math.cos(Math.toRadians(c2 - c3)))
				* 6371;
		return distance;
	}

}
