//
//  ViewController.m
//  Contacts
//
//  Created by lily on 3/17/16.
//  Copyright © 2016 Seab Jackson. All rights reserved.
//

#import "ContactsViewController.h"
#import "Contacts-Swift.h"

@interface ContactsViewController ()

@property (nonatomic, readonly, strong) NSMutableArray *contacts;

@end

@implementation ContactsViewController

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        _contacts = [NSMutableArray array];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    Contact *contact = self.contacts[indexPath.row];
    cell.textLabel.text = contact.name;
    return cell;
}

- (IBAction)cancelToContactsViewController:(UIStoryboardSegue *)segue
{
    // no action taken if the user cancels
}

- (IBAction)createNewContact:(UIStoryboardSegue *)segue
{
    NewContactViewController *newContactVC = segue.sourceViewController;
    NSString *firstName = newContactVC.firstNameTextField.text;
    NSString *lastName = newContactVC.lastNameTextField.text;
    if (firstName.length != 0 || lastName.length != 0) {
        NSString *contactName = [NSString stringWithFormat:@"%@ %@", firstName, lastName];
        Contact *newContact = [[Contact alloc] initWithContactName:contactName];
        [self.contacts addObject:newContact];
        [self.tableView reloadData];
    }
}




@end
