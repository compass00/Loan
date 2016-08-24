//
//  MainTableViewController.m
//  Loan
//
//  Created by JiaLi on 16/8/24.
//  Copyright © 2016年 JiaLi. All rights reserved.
//

#import "MainTableViewController.h"
#import "MainTableViewCell.h"
#import "MainSubmitViewCell.h"
#import "HouseValue.h"
#define COUNT 17
@interface MainTableViewController ()

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    self.title = NSLocalizedString(@"STRING_APP_TITLE", @"STRING_APP_TITLE");
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return COUNT;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 88.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    if (indexPath.row == COUNT - 1) {
        MainSubmitViewCell *cell = [MainSubmitViewCell loadfromNib];
        // Configure the cell...
        if (cell != nil) {
            cell.housetitle.text = NSLocalizedString(@"STRING_SUBMIT", nil);
        }
        
        return cell;

    } else {
        MainTableViewCell *cell = [MainTableViewCell loadfromNib];
        // Configure the cell...
        if (cell != nil) {
            cell.housetitle.text = [HouseValue getTitle:(HOUSEVALUETYPE)indexPath.row];
            cell.houseinfo.text = [HouseValue getInformation:(HOUSEVALUETYPE)indexPath.row];
            BOOL showSegment = [HouseValue getShowSegment:(HOUSEVALUETYPE)indexPath.row];
            cell.textfield.hidden = showSegment;
            
            if (indexPath.row == HOUSEVALUETYPE_HOME_VALUE) {
                [cell.segmentcontroll setTitle:NSLocalizedString(@"STRING_HOUSE", nil) forSegmentAtIndex:0];
                [cell.segmentcontroll setTitle:NSLocalizedString(@"STRING_BISINESS", nil) forSegmentAtIndex:1];
                [cell.segmentcontroll insertSegmentWithTitle:NSLocalizedString(@"STRING_PUBLIC", nil) atIndex:2 animated:NO];
            } else {
                 [cell.segmentcontroll setTitle:NSLocalizedString(@"STRING_YES", nil) forSegmentAtIndex:0];
                [cell.segmentcontroll setTitle:NSLocalizedString(@"STRING_NO", nil) forSegmentAtIndex:1];
  
            }
            cell.segmentcontroll.hidden = !showSegment;

        }
        
        return cell;

    }
 }


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
