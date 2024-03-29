package IPL.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import IPL.DTO.Management;
import IPL.DTO.Player;
import IPL.DTO.Team;

@RestController
public class Controller {
	@Autowired // it will act like vechile and it will bring the the object from the respective
	Management management;

	@Autowired
	Player player;

	@Autowired
	Team team;

	@RequestMapping("signup")
	public ModelAndView signup(@RequestParam String role) {

		ModelAndView modelAndView = new ModelAndView(); // here Model means Object & view means frontend(jsp) here the work of model and view is nothing but carrying the object to the frontend(menas JSP)

		if (role.equals("Management")) {
			modelAndView.addObject("management", management);
			modelAndView.setViewName("managementlogin.jsp");

		} else if (role.equals("Player")) {
			modelAndView.addObject("player", player);
			modelAndView.setViewName("playersignup.jsp");

		} else if (role.equals("Team")) {
			modelAndView.addObject("team", team);
			modelAndView.setViewName("teamsignup.jsp");

		}
		return modelAndView; // if i want to return or carry anything to the frontend finally i should return the reference variable of the ModelAndView Class.

	}

}
