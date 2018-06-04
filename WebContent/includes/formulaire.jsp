<div class="container">
	<div class="section">

		<!-- info header of the form -->

		<div class="row">
			<div class="col s12 center">
				<h3>
					<i class="mdi-content-send brown-text"></i>Apply at ISI College
				</h3>
				<h4 class="center-align light">Fill the form</h4>
				<p class="left-align light">Simple paragraph (we can delete it!)
			</div>
		</div>

<h4>Upload your files</h4>


		<div class="row">
			<form name="upload_files" id="form_upload" method="post" enctype="multipart/form-data" onsubmit="return validateUpload()">
				<div class="file-field input-field col s9">
					<div class="btn">
						<span>File</span> <input id="upload_files" name="upload_files"
							type="file" multiple>
					</div>
					<div class="file-path-wrapper">
						<input class="file-path validate" type="text"
							placeholder="Upload one or more files">
					</div>
				</div>
				
					<div class=" center-align input-field col s3">
						<button id="submit_button"
							class="btn waves-effect waves-light btn-large"
							type="submit" name="action">
							UPLOAD <i class=" material-icons right">file_upload</i>
						</button>
					</div>
				
			</form>
		</div>


		<div class="row">
		<!-- onsubmit="return validateForm()" -->
			<form action="upload"
				name="form_credentials" class="col s12" method="post" onsubmit="return validateForm()">
				<div class="row">

					<div class="input-field col s6">
						<input name="fName" id="fName" type="text" class="validate"
							 > <label id="labelFName"
							for="icon_prefix">First Name</label> <span class="helper-text"
							data-error="3 characters min. and no numbers please"
							data-success="quite a name!!">"John"</span>
					</div>
					<div class="input-field col s6">
						<input name="lName" id="lName" type="text" class="validate"
							> <label for="last_name">Last
							Name</label><span class="helper-text"
							data-error="3 characters minimun and no numbers please"
							data-success="we got you!!">"Doe"</span>
					</div>
				</div>

				<div class="row">
					<div class="input-field col s12">
						<input name="email" id="email" type="text" class="validate"
							>
						<label for="email">Email</label> <span class="helper-text"
							data-error="please respect the following format: 'your_Email@your_Domain.extension' "
							data-success="let's tays in touch!">abc@def.com</span>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s12">
						<select id="course" name="course" class="validate">
							<option value="0" selected>Choose your program</option>
							<optgroup label="Programming">
								<option value="1">Option 1</option>
								<option value="2">Option 2</option>
							</optgroup>
							<optgroup label="Netoworking">
								<option value="3">Option 3</option>
								<option value="4">Option 4</option>
							</optgroup>
						</select> <label>PROGRAMS</label>
					</div>
				</div>
				<h4 class="center-align light">choose your session</h4>
				<div class="input-field col s12">
					<p class="input-field col s4">
						<label> <input name="session" type="radio" value="winter"
							class="validate" /> <span>winter</span>
						</label>
					</p>
					<p class="input-field col s4">
						<label> <input name="session" type="radio" value="summer"
							class="validate" /> <span>summer</span>
						</label>
					</p>
					<p class="input-field col s4">
						<label> <input name="session" type="radio" value="autumn"
							class="validate" /> <span>autumn</span>
						</label>
					</p>
				</div>


				<div class="row">
					<div class="input-field col s12"></div>
				</div>


				
			<!-- </form> -->

			<!-- SECOND FORM -->
<!-- 			<div class="row">

				<div class=" center-align input-field col s12"> -->
					

						<div class="row">
							<div class="input-field col s12">
								<button id="upload_button" class="col s3 offset-s5 center-align btn waves-effect waves-light btn-large disabled"
									type="submit" name="action">
									SUBMIT <i class=" material-icons right">send</i>
								</button>

							</div>
						</div>
						

					</form>
				</div>
			</div>
		</div>
	<!-- </div>
</div> -->