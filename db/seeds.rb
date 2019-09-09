# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# users
Recipe.destroy_all
User.destroy_all
Mealplan.destroy_all
Meal.destroy_all

u1 = User.create(username: 'Maruf', password: '123456')
u2 = User.create(username: 'Varvara', password: '123456')

d1 = Mealplan.create(days: 'Monday', user_id: u1.id)
d2 = Mealplan.create(days: 'Tuesday', user_id: u1.id)
d3 = Mealplan.create(days: 'Wednesday', user_id: u1.id)
d4 = Mealplan.create(days: 'Thursday', user_id: u1.id)
d5 = Mealplan.create(days: 'Friday', user_id: u1.id)
d6 = Mealplan.create(days: 'Saturday', user_id: u1.id)
d7 = Mealplan.create(days: 'Sunday', user_id: u1.id)


r1 = Recipe.create(name:"Eggs and Bacon",
	img:"https://s3.amazonaws.com/rtacabinet/recipes/beta/wp-content/uploads/2017/10/28151038/5.jpg",
	 ingredients:"2 eggs, 2 slice of bacon", 
	 instructions:"In an unheated skillet, place 2 strips of bacon. Increase the heat to medium and let the bacon cook for 8 minutes, flipping halfway through. While the bacon cooks, prepare your skull eggs.\nHeat a pan over medium-high heat and add the skull egg mold. Spray the pan and mold with cooking spray and let it heat for 1 minute. Crack one egg into the eye of the mold and then crack another egg into the second eye. Season with salt & pepper and cover the pan. Let the eggs cook, covered, for 4 minutes, or until desired doneness of the egg yolk. Remove the cover, lift the mold and plate your eggs. Add the bacon to your plate for a deathly delicious breakfast.",
	 calories: 350,
	 fat: 28,
	carbohydrates: 2,
	protein: 21,
	fiber: 0,
	servings: 1)

r2 = Recipe.create(name:"Tuna Avocado Salad",
		img:"https://images.eatthismuch.com/site_media/img/924619_Tahirah_Fo_Ferah_be330bb4-505c-4ea2-b074-26ad678577a2.jpg", 
		ingredients:"1/4 avocado, 3oz tuna",
		instructions:"Using a fork, mash up the tuna really well until the consistency is even. Mix in the avocado until smooth. Add salt and pepper to taste. Enjoy!",
		calories: 124, fat: 6,
		carbohydrates: 4,
		protein: 15,
		fiber: 3,
		servings: 1)

r3 = Recipe.create(name:"Pumpkin Coffee Cake", 
	img:"https://lh3.googleusercontent.com/RBqhy4oi4OZUigEtaYdsYc8OZsiQJEaZg1plfhmRUMyHc-Rc-PXMGNykgwGT4JM_mKnFEEBDQOdEJKxRJltj6GAc-Elr7MDFsX3ZE1yt2zawuxbMDljxcb4mgl6Bwu8D6r3bwPutnMjLabT36GQa3lA0USXMG-g33kk8Z96ocY5lwsE_yziYSUXzZIp0hGUZU94gM29Hsss6oaa0whJ9j_iL2uwG83-jSAVHG5O4ShZLtQEOQglcRqoS3dAhOVUTia1ZZFjj0Pu6jrGRuRjyz3ZOoWxcB7ZcqJAZIEJEM5RE-NhA360gbofkqeHFU-8UUeiIBV9Z0fLtc2p_CmoneNRnukfDm_mOovsNMEfkVOLPttUNwJf_c-WreLkwIb59TkegV_48vCAvIBa9DygZuIpETjyKh-Be4gQMmP4INxH7gC4PsbO_1er5ZIll5SpsREGmab2WWE3gc_-uuUt06L1cu085aSrL22YtyZZ7ZgBdMeyvF0itx4gmHYEWou95VjNBZfXcWvI1DJf96ZTCYzPfB1nwWVce9rM6CHeIiT1vedyTqwTKKUZ_DZI5OG_9Th-5hf54fiODApZL6UFtj34p0guy5lvup0TzDKjxSlpx-xHGvLnWaaK34Ul2jN5dv4sjFsu-DKEvVgYZ-m5BIDqXJtimlT58pCARwWeA7IfndODcxgbFgNg=w1474-h1422-no",
	ingredients:"STREUSEL TOPPING:1/4 cup blanched almond flour 1/4 cup Swerve confectioners'-style sweetener or equivalent amount of powdered sweetener 2 tablespoons coconut oil or unsalted butter, softened 1/2 teaspoon ground cinnamon CAKE:2 cups blanched almond flour3/4 cup Swerve confectioners'-style sweetener or equivalent amount of powdered sweetener 1/2 teaspoon fine sea salt 1 cup pumpkin puree 2 large eggs, beaten 2 teaspoons pumpkin pie spice 2 teaspoons vanilla extract GLAZE:3 tablespoons unsweetened almond milk, plus a little more if needed 1/2 cup Swerve confectioners'- style sweetener or equivalent amount of powdered sweetener",
	instructions:"",
		calories: 239, 
		fat: 21,
		carbohydrates: 9,
		protein: 9,
		fiber: 4,
		servings: 8
	)


r4 = Recipe.create(name:"Lemon Ricotta Torte",
	img:"https://lh3.googleusercontent.com/eurvFapg8M4NquBOmP-nsFSzwARQWT1tEJ9bmAquqbkSxyxQRyUyxMEzo8wjmkpD4YbclbHwHFpIM-NITRTZKko6F-wRiNUJgxr1bh0vQJy9kqh4B8t9ewmlteQ37xhq7r8Dc--rpVmUBdWkkWgLgLn9Nbk2qG0NTF8IMKwkTmVR-1A2Lad6yDjgOnA2pAVHTQpShLC35v1DDvMYIwQDEdk35n770Zb4Gym1tKE6x8-YvqC6dcn1ikuKP-VEFg6bbpuRnsTFAxWjHtajKrbWr6vXEfM0W8QjO5_l2AHUTUX0ITTvoD_qyJEMBpKSoHb0ZiQJiAXa48aMubd0jOS9q11gvu0JrfhnBUeocfPccw5CS8kvQ8AizWyQKm9G1NuVl7rdT0scyH3cwpfxFbXkrj6WlwHaUofdrV0UXGAD9jKI2DTNwPZIl5Ha11yKuEXAZRoxpnUhVpPjYga5alR1OHVE0qj0ddqFIMGvYseGVcPVHp2O91yFUTj-ZysaWn5pxi8XCSWgplZ_EpaxDadkXHCtNMgr2j5PLCVTfriw8d9j0K7h2UOo-ZAGkF04U27axvUXmd8xl-GqVopoV8lzz-6SPraWDgyJQ8cDYo0vHr6GnbFzQkRDzm1Oes6s8tJVz4sNqgMgji-WaA1VNxSzOXqgK6oEt8ULnOsRNc9aeTpvwqDX-YFcAVo=w1398-h1336-no",
	 ingredients:"", 
	 instructions:"",
	 calories:0,
	 fat: 0,
	carbohydrates: 0,
	protein: 0,
	fiber: 0,
	servings: 1)

r5 = Recipe.create(name:"Chocolate Fondue",
	img:"https://lh3.googleusercontent.com/kZD4nh6l0exDQXNLXRC1gWhEpu7vRqIwc_7-NXxog3NOCdoq2enDz-5R969JlMYgG4BoZOSTGEbHXqsHYDZtt2KFOpKk9UBCxoUCChpG6HCQ87toGLoEvS_MZ8JPgWsx37DD7LXd10fJe5uJnoqTXMViSUqHRf3Y5Q18faKd275TQysPBfQRD_Z-385Vo8FMwuxTx73fNJ6sHhIh8gNi2zJf3cXHOM72yJk9YDT6fDLnl0IQpj3DPw0GSG-ABRZUp6mIUYQvJgJTdnzOQVbi1rpafcOB-WG1xQxtuWQ7AZiuXtJDUgrXLxZhb-CuSSExjpTMYFo--O9yov0Bi1O_S1o5h0mljlWcc-MKUwEQeC6e1Rmw6hEghvNdWtNyHcIvB8l9dxDsjNM87fBMSgO0SlCPqugKG1b0g-RIklfwTDqYyRcdqUl93eL7PhDkhZLhQqpPjRU9fNMWeaesSzWhxEOzYKW6VShhjJmyZJkfEsgn7vDjv3a6mwMvBvJr1kkAnd8zUx4PAQtKV3fvqVhmbYUJxeXHaqgHTpdyMKiM5K1nViAKxTJgMp1ll2M9t2psXlW6FiENVGH4KAxIDqVIBQBltA-lEo1wvzTkACsVxvGB7clM8u7sKy48IYhEZDtndVraGprW81PrbgHv9bmma7GmxktoOtbo6Fbi2smGFBL878jtGSWahEg=w1344-h1336-no",
	 ingredients:"", 
	 instructions:"",
	 calories:0,
	 fat: 0,
	carbohydrates: 0,
	protein: 0,
	fiber: 0,
	servings: 1)

r6 = Recipe.create(name:"Shrimp Scampi",
	img:"https://lh3.googleusercontent.com/AwGEpul_fril23G3g-LiQ-7Tosxitfu4aqfbJBf6v_flt7pRNbot9JJ6kLo-dT2vDsO7v2Ra4ixf2V0b3SW2mglFB1FXDyWNU2_q5v9JTfjz4tDWnpPxijXNZkRF3_MoGu6Lu1akORqzKxXknP4ipNxSmGygiHf41wOXS1yfptk6WT5LXFTdEHLCIm0WmzRLabsLLRvUaTK1kH06afXWfQ0cNDcs_S2Ccu4C5yCHhBlmutR8usPPRpIdkPO_Std6mNNZFmnuQBF89pVyk4Q9q_DrfzwIrFxEmFyVUsNUIvw28EpqUhFIKT6LpqM5mxDS2VKD2y4f2E9v5vqO9Kc4b5apUirWNlRHufcAeF1iytpOs7n2TpkpKHpA-GyxqcD7XhvsFQXF0mDCuLPQvmmDBIqp8tYYjW05-fpNqtQv8cjnUn6bjp0_6hwKrQuc3cMvx6AeuUe859edjg-nCVVqv-k9FTE7tzxlWfNPy-pwIwQRpNLRNxHhcVnaGjsqsReOpSutZyYBiH0kDRwfXBQpvuyjsvyQLMhrvMYO2V17c2iJ3YLE6MJYRwPcWhfmbqk661M_QP3Fbd6UWUAk6_kbWw7TNjwQV_xWvXY2pS6zv9AkurchRVuMmu9D_ign6VYki6YTQ2yRSLGzwDYP0PkvImAxETzKHwUqOVlVXKWYHKdqWrWL9gVW0wg=w1436-h1336-no",
	 ingredients:"", 
	 instructions:"",
	 calories:0,
	 fat: 0,
	carbohydrates: 0,
	protein: 0,
	fiber: 0,
	servings: 1)

r7 = Recipe.create(name:"Salmon",
	img:"https://lh3.googleusercontent.com/0cr68IwGUxT4g6hA20eiv1EGZ8KJThHkGzz_ilPrTLKJu_BrKG3C5lNTqfnPn486G9E5X2Vkw9igdR_ulHm7OtQQq7zjNiMxg_SxgT3lTm_lufQ6vPGY2pHAOg3lb8r0vgFVSWVzjK_aAq9TCpyr0ezgQlhP_KoEg6lZ1_TaKjz0kizIJN2F77q-e3IAmWbxPfD5tqO14Qfmmf13tzIyoorp4kDZetF2b3NCuSISMrtzWFhZN-am2HalGORgr6uOBlyMUl1nZOhPBNoXtYYbCJjcaOf2Pgh6LJaWyP4dd6NT4DZ7-5JnyuhvLAHqrEyMDFbYgxrgiY-bYYy1kLl1tfNg7VPRqbmJa0LpHDq0Eug-hQhqJihmO64pLEHwpC8u01O0aqzRyJtQr7dD2-NVRJ5bzN2yEXX8x6eXgsqKNtx_sp-07GXUUpJcivo6DFx42tjm5VxWEYRaZxWiL75ktDspr_DZB_mk3ogfoQjxyNzdEg_OoX3K4rrxc5gzgvYOGOsb7fS_hyCJXg3njM7QlOw8QVZYx5t8en_PI3HPiiUY4KU2wByRB4q7cXWXebHiAIgsRIPtanyFbxS3obvCGNxYyV67Vo9B3pi_kTakaxOwGGKOWDzP3Xy4bZM5UnKUnpufWrGHdvrE_qhllxOvhSh4fp151-W5pA1CtCZXWKM40I_HufrjWbo=w1426-h1336-no",
	 ingredients:"", 
	 instructions:"",
	 calories:0,
	 fat: 0,
	carbohydrates: 0,
	protein: 0,
	fiber: 0,
	servings: 1)

r8 = Recipe.create(name:"Sesame Chicken",
	img:"https://lh3.googleusercontent.com/kvemfhV1C9pZJMtXY9Hgn2lgfKk3BJZxz0npsPxIKagY8OyaWIKBbC_VIB3_K_mX373vl4jQzF2r_KXhgJwNPSeA1EmQOPH5SOHcvgdrSlHQfxIzSpYVEhMsRFIiH-1tM34rajZAXYZ059xeFV8IBiPzD9AbkuGbbYbhMHRjYp48R0NxM1I3sl-kpxAfuzA8T-YEC9IpK9Ka06EEsFg2s0DLqCd6WbbazwNvA0nHicq08fPmP9fmcreOcxy55pBUSOfqqzG4ud76awZiz4EDYZOBY1PXZ8Iv41ngVSl-wnnwr481dp81jIBJ6Y1KodaIO11aYHiDrfTOxW5PuWeSZAXxWM-oGBtKL0j5CzJbXJda4g8D4BHcw1AcZrum6eRyGHCMgGUKy9RJ4QOi0la0q04z4TMKWSZYdQ51tvefoLMaA5wI_EuB-o-3gqnF9RVZXVn4P5Au-SPLYw-NI0wA6UYWU179vU9v7dagsi-1tx4zALglnVoe0RZNZkFddz58Ld6b9NG4urE87DGSndkXpL8vC-abG5erwm-ct9lm_fhSUOn-mAaQ3TBL1AakWAP59M2ZrThc3Que6k9q4NWxyPzPav9kgMtC7buvI-Bcq3rkXNS9SCCkdhmh8pIGlN6V3dbiGTb1dl4UyAccACbca0X0m64OamfZhsuvYOfSa5uQiroTZrCzjcI=w1470-h1336-no",
	 ingredients:"", 
	 instructions:"",
	 calories:0,
	 fat: 0,
	carbohydrates: 0,
	protein: 0,
	fiber: 0,
	servings: 1)

r9 = Recipe.create(name:"Chicken Adobo",
	img:"https://lh3.googleusercontent.com/rdHVElktsqaX3f-aXivp9v3BJeLZULdPzeKixcCUNyT9GX5CWof3oTB9x18lTQn9O9N5ZoSQmaJecVoit6dHrBczf6Qbz_DSgjCcxTFmfrahE8WANyQOypMord_kPlx70yIHqgpuVw-Fp3tK1SHwUkmeuKQZ0AnM16RCaFEYaEzwY56SdTN1Z5YVMw6iuVj8AW3JlC3zFQEWwKB_MEjsA134VLSPcX7ckeOpK6QVbbnvggphhv6dTQAAqWUSMp2cm4DS2HiX30h8dXgnpU_fMVouxfphArdxcXYhyHLVzyPXT_omq1nmVeFy8u9eiVf8t_2Obcnqho4lOp3FXU8ixxfFvMH-7yLAlhhTBPsq2jvJTf6bU2PYDd00ttyQ8LzsmG-nkpurIwYA8j9QSgGTgOkGZ2fBvcqI6KXtqeoslDKtSFQjCr0T1GI9S3r920PwBEns97LLIK0ioOLq2G6s09a07BtatvPo5oxjNBZnW-mRrfsjwczNUNZnsyLAOeXhVvZAmYEj04BysM39ZEZG5KblfX4PxbG3XulV_bPf-gbN_JrcOPq4DATSxyG9TroUUdCH_NU0-qTymvtHlAvkRwGlTzjHvzxvsAEoDHt8LTrRkaJvIzSIi4oQnNPM7sN6ZgvOM0XOnEMtrtEQthMBr483uLHKPHO-F3zy8Xcgr1NHibDvmGxdHeM=w1424-h1336-no",
	 ingredients:"", 
	 instructions:"",
	 calories:0,
	 fat: 0,
	carbohydrates: 0,
	protein: 0,
	fiber: 0,
	servings: 1)
r10 = Recipe.create(name:"Asian Orange Short Ribs",
	img:"https://lh3.googleusercontent.com/nPjRGCmuoK20W_YemQ4plAjNQ9DVkv1Zdd5ga1lo_6YzldFFDzYd1xADI4FIWReXm4lFlmL1AYvl70-QLuWww77dA-Z7l92MFd9uBS4qMRCKw7cYY6HBh1akmlmW81MyrmgnCJAUVI_uNJsy_D2Ddmr9qFdtWWB82sFwpHadXZljd8h5OIWbrJsDBB9evjmgkp_NjGXUDgKygNISSiDGN_GWMSMRhc5CDXsXPBZ12pObEXIEOCYBBv-V5HrzGhhSfPk2i9vZcm43ZS3Jue3nRZq7jBC4cmEVyZR8yegUq1JEarMEA9SwYV95seEUlWtCrZO9r7qVrW1QS5y0Aqzeh6Ya8PKYTgkIg77uUIAYdm9qhasRrlbuhKwSLo664x4l8peZQREaARAd5yQzHUMDwoOowxgVkmXd0QyTcgSvQrFD_mQuDB4-ADt24lHuRD_sVyPh7mtU0mqVhHdrwYRcBwK43YTmgZcS5hspapZ6WTpWwsIasYKYpxzU0JFnzU7H4jlJ50kv00vBWW_0208ivHD0BXv-cK0iDu0o3zb2rTkcCzjQUOZxQ3VsQfvvOBAnYqbVauwGPJ5bYySeFo4ATKCA3tQ8eFJCoZARaoQka_4UEZrdg0InPUOXH_vybuSokcPydAGE-QwvUeJsJeAFgCu0XOlm18wO1nZbizoDVT6XrXIdxGmyTUc=w1438-h1336-no",
	 ingredients:"", 
	 instructions:"",
	 calories:0,
	 fat: 0,
	carbohydrates: 0,
	protein: 0,
	fiber: 0,
	servings: 1)

r11 = Recipe.create(name:"BeefStroganoff",
	img:"https://lh3.googleusercontent.com/jTbZMn-h70VFFB2ZnihgNrIlyguDuxubMWolGeDKXeL63iG84l9P9Lb-RziWixbrISwTY92dfo2Zg7QXjQPQbh6tmdP_83qY_V3JjDLHKACyaMGoWsLhLUb-Avhi0U4gvsZwwH8jJgLj1jKU5Blsmy34j_qv4qTWwxe6ZOuvVZ3eXNqPOUP1fxd5wXBFmizWZGFun5uByOhHml8WH19rmTVwZFKtFVKJgynGifR_1T9kztCmy7aSOBCo5FmmLWxEVkw6NKAu2KJGuHW7YE1a8qtLbpQ4V0DZXKfBgXotku7sH7orS91xHID9IaIfSGETE1hXJF-J2X2o601MvKxiu55LabEH8mhiCZgGPtFGu2SYkJcq0y-1-w0ed9FYZ_-vxDocxq7hwif-fkte05LsY0vU9BS6TqKAn83hWT-dbkHBd60LpEd-PK0pbfuqmuQoMl3NfJXkutiYIaRpnYzVgd5dzHJbvaKUWEucxTHF_mKfO1B7kIXMylWvLGHg5nKKNDDdDjqsTaStJ-RSc1Hwg7h-zuinrIIOL2zBkoFw4Zjk26jHbuzcdGe4zdh6x87QKge23sZDJPQDzoD9D1yZ8YKaCQwr6hQ4CT7MNYeeIM7Ls1BlZxWlTszSp5HXMYcH3zCLrgNUqKbFIKh925QP5g3-X85A9pOavEgrvydVEZ9DLyX0KyY8QDs=w1548-h1336-no",
	 ingredients:"", 
	 instructions:"",
	 calories:0,
	 fat: 0,
	carbohydrates: 0,
	protein: 0,
	fiber: 0,
	servings: 1)

r12 = Recipe.create(name:"MeatLoaf",
	img:"https://lh3.googleusercontent.com/Jmkorc0B_p2oBCgugXsqWryHSNTpMDROX47ggpl7wGLRR2D-fbtd5c2B1xKeySoHnBm84Oj0BdEXaXMon_Oh_ykleTRK8cUwe1raypR0d2KYCpnLctWCR-vIP2tLr8svxREVdoWBo-4__Dp3RPdij31oi_jqYPfgQf-RleCBgIt-eUSZk6yRnAQxG0oJSCpgfugUq0nsvMJYHzsguS2PwLWIQNu5g93gIiwEOS_OA9PP7Y7-z_zj7L_1uzCyWzgJ-BKeeP2XlNfHZ4tlglJPQHFwv8SsolRVbkLIM8vZgVKJVwcbnk-v5MzicvhaQ5UgUR9GsTgHmhEbBNxInwCRgYB3otXoiZDzuGHib60sgv-3eF1ofKYoaXD_LSAEmDAMEgi2xiXNeDMTIHQYCaTV6jN5dvZljvs83dPqj_YQL7eBF7IIYpJAXQ2PV-XV6maKKO--zM4CsalFbLbt-tCtLfUv6gKLmbClplPy7nnjqGExSUvh0xYW9OdM30JZFgtpYazzb-IGVr_-FazCPwpi2C2Lc-ddAp7ci9SjF785wKG7thwa98gVl-lH_GtSpjZQ7yb01-gp5OT_FboqzfOkvMxcWVwuUI-012qmrXh0BqbKBEX0lRBO_Go55Ey3OoDXqpyHJ3Ys3gSMdfQEDD-Rk-gSH19YoTg_b_1E-UEH2qWJOLh8AoAhxkE=w1540-h1336-no",
	 ingredients:"", 
	 instructions:"",
	 calories:0,
	 fat: 0,
	carbohydrates: 0,
	protein: 0,
	fiber: 0,
	servings: 1)


# Recipe.create(name:"",
# 	img:"",
# 	 ingredients:"", 
# 	 instructions:"",
# 	 calories:0,
# 	 fat: 0,
# 	carbohydrates: 0,
# 	protein: 0,
# 	fiber: 0,
# 	servings: 1)

Meal.create(mealplan_id: d1.id, recipe_id: r1.id, name: "Breakfast")
Meal.create(mealplan_id: d1.id, recipe_id: r2.id, name: "Lunch")
Meal.create(mealplan_id: d1.id, recipe_id: r3.id, name: "Dinner")

Meal.create(mealplan_id: d2.id, recipe_id: r1.id, name: "Breakfast")
Meal.create(mealplan_id: d2.id, recipe_id: r2.id, name: "Lunch")
Meal.create(mealplan_id: d2.id, recipe_id: r3.id, name: "Dinner")

Meal.create(mealplan_id: d3.id, recipe_id: r1.id, name: "Breakfast")
Meal.create(mealplan_id: d3.id, recipe_id: r2.id, name: "Lunch")
Meal.create(mealplan_id: d3.id, recipe_id: r3.id, name: "Dinner")

Meal.create(mealplan_id: d4.id, recipe_id: r1.id, name: "Breakfast")
Meal.create(mealplan_id: d4.id, recipe_id: r2.id, name: "Lunch")
Meal.create(mealplan_id: d4.id, recipe_id: r3.id, name: "Dinner")

Meal.create(mealplan_id: d5.id, recipe_id: r1.id, name: "Breakfast")
Meal.create(mealplan_id: d5.id, recipe_id: r2.id, name: "Lunch")
Meal.create(mealplan_id: d5.id, recipe_id: r3.id, name: "Dinner")

Meal.create(mealplan_id: d6.id, recipe_id: r1.id, name: "Breakfast")
Meal.create(mealplan_id: d6.id, recipe_id: r2.id, name: "Lunch")
Meal.create(mealplan_id: d6.id, recipe_id: r3.id, name: "Dinner")

Meal.create(mealplan_id: d7.id, recipe_id: r1.id, name: "Breakfast")
Meal.create(mealplan_id: d7.id, recipe_id: r2.id, name: "Lunch")
Meal.create(mealplan_id: d7.id, recipe_id: r3.id, name: "Dinner")
