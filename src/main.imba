tag ui-button < button

	<self>
		css ol:none e:1000ms rd:6px py:1 px:3 bg:hue2 hue:emerald
			bd:1px solid transparent c:gray8 cursor:default

			@hover
				filter:brightness(1.15)
				bc:cool4

			@.nobg
				bg:transparent c:#site-c bc:#4B4B4B
				@hover bc:warm5

		<slot>

tag App
	<self>
		<div [d:vcc g:2]>
			<ui-button [hue:red]> "This is UI Button"
			<ui-button [hue:green]> "This is UI Button"
			<ui-button [hue:blue]> "This is UI Button"
			<ui-button [hue:yellow]> "This is UI Button"
			<ui-button.nobg> "This is UI Button"
imba.mount <App>
