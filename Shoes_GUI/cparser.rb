require 'green_shoes'

Shoes.app(title: "Code Counter | Login", width: 500, height: 500) do
  background rgb(0, 153, 255) 

  flow width: 500, height: 50 do
	image "img/github_logo_fin.png", width: 350, height: 150, margin: [72,60,120,0]
  end

  flow width: 270, height: 95 do
    username_auth = edit_line width: 260, height: 40, margin: [120,160,120,0], text: "Username"
    password_auth = edit_line width: 260, height: 40, margin: [120,10,120,0], text: "Password", secret: true

	button 'Login', width: 80, height: 40, margin: [210,5,210,0] do
	  # Handle login, if successful authorization then continue with new window & close
	  window title: "Code Counter", width: 250, height: 250 do
		background rgb(0, 153, 255)
        para "Choose a language:", margin:[5, 80, 60, 0], align: "center"
		list = list_box items: ["Ruby", "C++", "JavaScript"], width: 175, height: 40, margin:[40, 5, 60, 0], choose: "Ruby"

		button 'Parse', width: 80, height: 40, margin: [85, 5, 105, 0] do
		  # Handle parsing, if successful open a window with options for the results
		  if list.text == "Ruby"
			# Parse Ruby
			alert("Ruby")
		  elsif list.text == "C++"
			# Parse C++
			alert("C++")
		  elsif list.text == "JavaScript"
			# Parse JS
			alert("JS")
          end

		  window title: "Code Counter", width: 250, height: 250 do
			background rgb(0, 153, 255)
			para "Parsing Complete!", margin: [0,60,0,0], align: "center"
			button 'JSON', width: 80, height: 40, margin: [85, 5, 10, 0]
			button 'SVG', width: 80, height: 40, margin: [85, 5, 20, 0]
		  end

		  # Close the parser window.
		  close

		end
      end	
	  # Close the login window.
	  close 
    end
  end
end
