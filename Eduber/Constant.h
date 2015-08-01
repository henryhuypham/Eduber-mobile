//
//  Constant.h
//

//App version code
#define kAppVersionCode 1

//Quickblox
#define kQuickbloxAppId    @"20325"
#define kAuthKey           @"wPheKOGMGhyZtDk"
#define kAuthToken         @"uE6TZ88DKABfwLT"
#define kQuickBloxHost     @"http://api.quickblox.com"
#define kQuickBloxAppToken @"177a92af09641546480c095b9b944c8ab1cb8504491e60f2"

//Fonts
#define kFontNameBold        @"TitilliumWeb-Bold"
#define kFontNameRegular     @"TitilliumWeb-Regular"
#define kFontNameLight       @"TitilliumWeb-Light"
#define kFontNameSemiBold    @"TitilliumWeb-SemiBold"
#define kFontNameLightItalic @"TitilliumWeb-LightItalic"
#define kFontBold(x)        [UIFont fontWithName:kFontNameBold size:x]
#define kFontRegular(x)     [UIFont fontWithName:kFontNameRegular size:x]
#define kFontLight(x)       [UIFont fontWithName:kFontNameLight size:x]
#define kFontSemiBold(x)    [UIFont fontWithName:kFontNameSemiBold size:x]
#define kFontLightItalic(x) [UIFont fontWithName:kFontNameLightItalic size:x]

//Host name
#define kHost           @"https://jmlstore.herokuapp.com/api"
#define kHostTest       @"https://jmlstore-uat.herokuapp.com/api"
//#define kHostTest       @"http://192.168.1.31:3000/api"

#define kHostNoAPI           @"https://jmlstore.herokuapp.com"
#define kHostTestNoAPI       @"https://jmlstore-uat.herokuapp.com"
//#define kHostTestNoAPI       @"http://192.168.1.31:3000"

#define kAppToken       @"257e975f68363412f30c56bce279cdf2d26373406c0a8417"

// ********** API ************
#define API_GET_LIST_CATEGORIES @"taxonomies"

/* get list of product from a category
@param : id, token
 */
#define API_GET_LIST_PRODUCT @"taxons/products"

//3rd-party services
#define kFlurryToken @"/api/taxonomies"


//Colors
#define kBlueLinkedInColor          [UIColor colorWithRed:20/255.0f green:103/255.0f blue:166/255.0f    alpha:1]
#define kRedGoogleColor             [UIColor colorWithRed:211/255.0f green:47/255.0f blue:30/255.0f    alpha:1]
#define kBlueFacebookColor          [UIColor colorWithRed:68/255.0f green:90/255.0f blue:159/255.0f    alpha:1]
#define kLightGray                  [UIColor colorWithRed:0.9 green:0.9 blue:0.9    alpha:1]
#define kBlueColor                  [UIColor colorWithRed:0 green:0.44 blue:0.66    alpha:1]
#define kLightBlueColor             [UIColor colorWithRed:0.98 green:0.99 blue:0.99 alpha:1]
#define kBrightBlueColor            [UIColor colorWithRed:0 green:0.68 blue:0.95    alpha:1]
#define kTableViewHeaderColor       [UIColor colorWithRed:0.92 green:0.92 blue:0.92 alpha:1]
#define kGray                       [UIColor colorWithRed:0.9 green:0.9 blue:0.9    alpha:1]
#define kGreenEmail                 [UIColor colorWithRed:0 green:0.68 blue:0.59    alpha:1]
#define kGreenPhone                 [UIColor colorWithRed:0 green:0.78 blue:0.47    alpha:1]
#define kGreenURL                   [UIColor colorWithRed:0.68 green:0.91 blue:0.42 alpha:1]
#define kOrangeContact              [UIColor colorWithRed:0.95 green:0.61 blue:0.07 alpha:1]
#define kYellowCalendarEvent        [UIColor colorWithRed:0.95 green:0.79 blue:0.15 alpha:1]
#define kBlueText                   [UIColor colorWithRed:0.2 green:0.6 blue:0.86   alpha:1]
#define kGrayText                   [UIColor colorWithRed:0.5 green:0.55 blue:0.55  alpha:1]
#define kRedText                    [UIColor colorWithRed:0.91 green:0.3 blue:0.24  alpha:1]

#define IS_OS_7_OR_LATER            ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)
#define IS_4_INCHES_SCREEN          ([[UIScreen mainScreen] bounds].size.height == 568)
#define SCREEN_HEIGHT               [[UIScreen mainScreen] bounds].size.height

#define kTabBarHeight self.tabBarController.tabBar.frame.size.height
#define kNavBarHeight self.navigationController.navigationBar.frame.size.height

#define kEnableScan           @"EnableScan"
#define kNotiSignOut          @"NotiSignOut"
#define kNotiSignIn           @"NotiSignIn"
#define kNotiSignedIn         @"NotiSignedIn"
#define kNotiPurchases        @"NotiPurchases"
#define kNotiDeliveryInfo     @"NotiDelivery"
#define kNotiDefaultCard      @"NotiDefaultCard"
#define kNotiReloadCard       @"NotiReloadCard"
#define kNotiNetworkOnline    @"NotiNetworkOnline"
#define kNotiNetworkOffline   @"NotiNetworkOffline"
#define kNotiExpiredToken     @"NotiExpiredToken"
#define kNotiRefreshScanView  @"NotiRefreshScanView"
#define kNotiChangeTab        @"NotiChangeTab"

//Switch modal views noti
#define kNotiSwitchToSignUp   @"SwitchToSignUp"
#define kNotiSwitchToSignIn   @"SwitchToSignIn"
#define kNotiSwitchToNewCard  @"SwitchToNewCard"
#define kNotiSwitchToConfirm  @"SwitchToConfirm"
#define kNotiSwitchToDelivery @"SwitchToDelivery"

//Checking auth timer interval
#define kTimerInterval      600
