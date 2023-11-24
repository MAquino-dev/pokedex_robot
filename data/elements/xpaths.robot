*** Variables ***

### TEST OPTION BUTTONS ###
${title_page}   //android.widget.TextView[@text='Guess the pokemon']
${menu_button}  //android.widget.RelativeLayout[@resource-id="com.quizzoteca.apokedexquiz:id/ivMenu"]
${get_coins}    //android.widget.TextView[@resource-id="com.quizzoteca.apokedexquiz:id/bCoins"]
${back_button}   //android.widget.ImageView[@resource-id="com.quizzoteca.apokedexquiz:id/ivBack"]
${sound_button}   //android.widget.TextView[@resource-id="com.quizzoteca.apokedexquiz:id/bSounds"]
${about_button}    //android.widget.TextView[@resource-id="com.quizzoteca.apokedexquiz:id/bAbout"]

### TEST POKEDEX BUTTONS ###
${clickable_p}  //android.widget.Button[@text='P'][@clickable='true']
${letter_p}     //android.widget.Button[@text='P']
${clickable_k}  //android.widget.Button[@text='K'][@clickable='true']
${letter_k}     //android.widget.Button[@text='K']
${clickable_u}  //android.widget.Button[@text='U'][@clickable='true']
${letter_u}     //android.widget.Button[@text='U']

### TEST POKEDEX GAMEPLAY ###
${pikachu_letter_p}    //android.widget.Button[@text='P']
${pikachu_letter_i}    //android.widget.Button[@text='I']
${pikachu_letter_k}    //android.widget.Button[@text='K']
${pikachu_letter_a}    //android.widget.Button[@text='A']
${pikachu_letter_c}    //android.widget.Button[@text='C']
${pikachu_letter_h}    //android.widget.Button[@text='H']
${pikachu_letter_u}    //android.widget.Button[@text='U']
${continue_button}     //android.widget.Button[@resource-id='com.quizzoteca.apokedexquiz:id/bContinue']

${ivysaur_letter_i}  //android.widget.Button[@text='I']
${ivysaur_letter_v}  //android.widget.Button[@text='V']
${ivysaur_letter_y}  //android.widget.Button[@text='Y']
${ivysaur_letter_s}  //android.widget.Button[@text='S']
${ivysaur_letter_a}  //android.widget.Button[@text='A']
${ivysaur_letter_u}  //android.widget.Button[@text='U']
${ivysaur_letter_r}  //android.widget.Button[@text='R']
#continue_button

${abra_letter_a}    //android.widget.Button[@text='A']
###EU REALMENTE PRECISEI TIRAR OS PARÊNTESES QUE SEPARAVAM ELE DO OUTRO XPATH
${abra_letter_b}    //android.widget.Button[@text='B']
${abra_letter_r}    //android.widget.Button[@text='R']
${abra_letter_second_a}  (.//android.widget.Button[@text='A'])[2]
#continue_button

${mewtwo_letter_m}   //android.widget.Button[@text='M']
${mewtwo_letter_e}   //android.widget.Button[@text='E']
${mewtwo_letter_w}   //android.widget.Button[@text='W']
###O ESQUEMA DOS PARENTESES TAMBÉM SERVE PARA ESSE XPATH
${mewtwo_letter_t}   //android.widget.Button[@text='T']
${mewtwo_letter_second_w}    (.//android.widget.Button[@text='W'])[2]
${mewtwo_letter_o}  //android.widget.Button[@text='O']
${button_like_it}   //android.widget.TextView[@resource-id='com.quizzoteca.apokedexquiz:id/bLike']
${clickable_like_it}    //android.widget.TextView[@resource-id='com.quizzoteca.apokedexquiz:id/bLike'][@clickable='true']
${button_hate_it}    //android.widget.TextView[@resource-id='com.quizzoteca.apokedexquiz:id/bHate']
${clickable_hate_it}   //android.widget.TextView[@resource-id='com.quizzoteca.apokedexquiz:id/bHate'][@clickable='true']
${button_later}  //android.widget.TextView[@resource-id='com.quizzoteca.apokedexquiz:id/bLater']
${clickable_later}  //android.widget.TextView[@resource-id='com.quizzoteca.apokedexquiz:id/bLater'][@clickable='true']
${rate_us_please}   //android.widget.TextView[@resource-id='com.quizzoteca.apokedexquiz:id/tvTitle']

### TEST SWITCH CHALLENGES ###
${level_button}     //android.widget.TextView[@resource-id='com.quizzoteca.apokedexquiz:id/tvLevel']
${stage_one}     //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.GridView/android.widget.FrameLayout[1]/android.widget.TextView
${stage_two}    //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.GridView/android.widget.FrameLayout[2]/android.widget.TextView
${stage_three}      //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.GridView/android.widget.FrameLayout[3]/android.widget.LinearLayout/android.widget.TextView[1]
### TEST COINS BUTTONS ###
${use_hint_button}   //android.widget.TextView[@resource-id='com.quizzoteca.apokedexquiz:id/frag_level_use_hint']
${expose_letters}   //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ListView/android.widget.RelativeLayout[1]/android.widget.TextView[1]
${remove_letters}   //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ListView/android.widget.RelativeLayout[2]/android.widget.TextView[1]
${solve_question}   //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ListView/android.widget.RelativeLayout[3]/android.widget.TextView[1]
### QUIZ XPATH ###
${letter_buttons}   //android.widget.Button[@resource-id='com.quizzoteca.apokedexquiz:id/game_btn']
${table_name}   //android.widget.TextView[@resource-id='com.quizzoteca.apokedexquiz:id/letter_text_view']