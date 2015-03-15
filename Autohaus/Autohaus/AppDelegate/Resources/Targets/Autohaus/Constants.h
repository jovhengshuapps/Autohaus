//
//  Constants.h
//  Autohaus
//

#ifndef Autohaus_Constants_h
#define Autohaus_Constants_h

//APP Constants
#define kAppName                @"Autohaus"
#define kAppEmail               @[@"enquiry@gingerdoll.sg"]
#define kAppTelNumber           @"tel://+65 9450 9516"
#define kAppAddress_Title       kAppName
#define kAppAddress_Subtitle    @"1 Derp Bldg. Herp Derp Road, Derpington City, Le Derp 259182"
#define kAppLocation_lat        1.339001
#define kAppLocation_long       103.778958

#define kAppLogo_Nav            [UIImage imageNamed:@"navbar_iPhone"]

//----TABS
#define kTabHome                1
#define kTabAbout               1
#define kTabShop                1
#define kTabCart                1
#define kTabTestimonial         1
#define kTabMore                1


//----SHORTCUTS
#define kAppScreen              [[UIScreen mainScreen]bounds]
#define kNotifCenter            [NSNotificationCenter defaultCenter]
#define kUSER_DEFAULTS          [NSUserDefaults standardUserDefaults]
#define kSCREEN_iPHONE5         ([[UIScreen mainScreen] bounds].size.height == 568)?TRUE:FALSE
#define kAppSystemVersion       [[[UIDevice currentDevice] systemVersion] floatValue]
#define kStoryboard(v)          [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:(v)]

//----EXTENDED SHORTCUTS
#define kToPrice(v)             [NSString stringWithFormat:@"$ %.2f", [(v) floatValue]]

//----SWATCHES
#define kSWATCH_NavBG           [UIColor colorWithRed:45.0f/255.0f    green:45.0f/255.0f     blue:48.0f/255.0f  alpha:1.0]
#define kSWATCH_TabBG           [UIColor colorWithRed:45.0f/255.0f    green:45.0f/255.0f     blue:48.0f/255.0f  alpha:1.0]

#define kSWATCH_NavTitle        [UIColor colorWithRed:35.0f/255.0f    green:175.0f/255.0f    blue:229.0f/255.0f alpha:1.0]
#define kSWATCH_NavItemText     [UIColor colorWithRed:154.0f/255.0f    green:167.0f/255.0f    blue:196.0f/255.0f alpha:1.0]
#define kSWATCH_TabTitleSel     [UIColor colorWithRed:35.0f/255.0f    green:175.0f/255.0f    blue:229.0f/255.0f alpha:1.0]
#define kSWATCH_TabTitle        [UIColor colorWithRed:224.0f/255.0f    green:224.0f/255.0f    blue:224.0f/255.0f alpha:1.0]

#define kSWATCH_Gray102         [UIColor colorWithRed:102.0f/255.0f    green:102.0f/255.0f    blue:102.0f/255.0f alpha:1.0]
#define kSWATCH_Gray63          [UIColor colorWithRed:63.0f/255.0f    green:63.0f/255.0f    blue:63.0f/255.0f alpha:1.0]
#define kSWATCH_Gray80          [UIColor colorWithRed:80.0f/255.0f    green:80.0f/255.0f    blue:80.0f/255.0f alpha:1.0]
#define kSWATCH_Gray230         [UIColor colorWithRed:230.0f/255.0f    green:230.0f/255.0f    blue:230.0f/255.0f alpha:1.0]
#define kSWATCH_Gray30          [UIColor colorWithRed:30.0f/255.0f    green:30.0f/255.0f    blue:30.0f/255.0f alpha:1.0]
#define kSWATCH_Gray28          [UIColor colorWithRed:28.0f/255.0f    green:28.0f/255.0f    blue:28.0f/255.0f alpha:1.0]
#define kSWATCH_BlueButton      [UIColor colorWithRed:42.0f/255.0f    green:65.0f/255.0f    blue:127.0f/255.0f alpha:1.0]
#define kSWATCH_GreenSectionBar [UIColor colorWithRed:69.0f/255.0f    green:178.0f/255.0f    blue:118.0f/255.0f alpha:1.0]

#define COLOR_GRAY(v)           [UIColor colorWithRed:v/255.0f    green:v/255.0f    blue:v/255.0f alpha:1.0]




//----FONTS
#define kFONT_CentGothic(v)     [UIFont fontWithName:@"CenturyGothic" size:v]
#define kFONT_CentGothicBold(v) [UIFont fontWithName:@"CenturyGothic-Bold" size:v]
#define kFONT_HelveticaNeue(v)        [UIFont fontWithName:@"HelveticaNeue" size:v]
#define kFONT_HelveticaNeueLight(v)        [UIFont fontWithName:@"HelveticaNeue-Light" size:v]
#define kFONT_HelveticaNeueBold(v)        [UIFont fontWithName:@"HelveticaNeue-Bold" size:v]
#define kFONT_HelveticaNeueCondensedBold(v)        [UIFont fontWithName:@"HelveticaNeue-CondensedBold" size:v]
#define kFONT_HelveticaNeueThinItalic(v)        [UIFont fontWithName:@"HelveticaNeue-ThinItalic" size:v]
#define kFONT_HelveticaNeueMedium(v)        [UIFont fontWithName:@"HelveticaNeue-Medium" size:v]

//----USER TYPE
#define kLoginTypeUser      @"LoginTypeUser"
#define kLoginTypeAdmin     @"LoginTypeAdmin"
#define kloginTypeGeneral   @"LoginTypeGeneral"



//--Configuration

#define TESTIMONIAL_BOX_CORNER                              6.0f
#define TESTIMONIAL_BOX_COLOR                               kSWATCH_Gray230
#define TESTIMONIAL_MSG_FONT                                kFONT_HelveticaNeueMedium(16.0f)
#define TESTIMONIAL_MSG_COLOR                               kSWATCH_Gray63
#define TESTIMONIAL_NAME_FONT                               kFONT_HelveticaNeueCondensedBold(14.0f)
#define TESTIMONIAL_NAME_COLOR                              kSWATCH_GreenSectionBar
#define TESTIMONIAL_TITLE_FONT                              kFONT_HelveticaNeueLight(14.0f)
#define TESTIMONIAL_TITLE_COLOR                             kSWATCH_Gray63

#define MORE_SECTION_FONT                                   kFONT_HelveticaNeueCondensedBold(14.0f)
#define MORE_SECTION_COLOR                                  [UIColor whiteColor]
#define MORE_SECTION_BAR_COLOR                              kSWATCH_GreenSectionBar
#define MORE_CELL_FONT                                      kFONT_HelveticaNeueMedium(15.0f)
#define MORE_CELL_BOX_COLOR                                 kSWATCH_Gray230
#define MORE_CELL_COLOR                                     kSWATCH_Gray63
#define MORE_CELL_CORNER                                    6.0f
#endif
