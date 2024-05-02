/**********************************************
Author: Yiguo SU
Date:2019/5/19
Description:
	This is our automatic seller machine.
 
***********************************************/
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
struct node{																	//Construct "node" variables; identify the type of basic variables
		char name[20];
		int ID;
		int amount;
		int price;
		char type[3];
		struct node *next;														//pass the link to the next node
};

int welcome();
struct node *search(struct node *,int);											//prototypes
struct node *administrator(struct node *);										//prototypes
struct node *customer(struct node *);											//prototypes
struct node *Mode(struct node *);												//prototypes
struct node *AdminMenu(struct node *);											//prototypes
struct node *DrinkList(struct node *);											//prototypes
struct node *Adjust(struct node *);												//prototypes
struct node *Modify(struct node *);												//prototypes
struct node *Add(struct node *);												//prototypes
struct node *Delete(struct node *);												//prototypes

void Back(struct node *);														//prototypes
void Exit(struct node *);														//prototypes

struct node *initialization(){													//This function is used to read files, allocate memory and build linklist
	struct node *head, *pnode1, *pnode2, temp;
	FILE *fp;
	fp = fopen( "file.txt", "r" );												//Open the file.text
	fscanf(fp, "%*s %*s %*s %*s %*s\n");										//Read the first line of the file, which is useless.
	fscanf(fp, "%s %d %d %d %s\n", temp.name, &temp.ID, &temp.amount, &temp.price, temp.type);	//Read the specific information in the file
	pnode1 = (struct node*)malloc(sizeof(struct node));							//allocate memory

	strcpy( pnode1 -> name, temp.name);											//build linked list and pass the data into the structure
	pnode1->ID = temp.ID;	
	pnode1->amount = temp.amount;
	pnode1 ->price = temp.amount;
	strcpy( pnode1 -> type, temp.type );
	printf("\n\t\t|********************* DRINK MENU  **********************|\n");
	printf("\t\t|     Drink Price     ID   Amount   Price   Warm/Cold    |\n");
	printf("\t\t|* %14s  \t%d  \t%d  \t%d  \t%s \t*|\n",pnode1 -> name,pnode1->ID,pnode1->amount,pnode1 ->price,pnode1 -> type);	//tabulize the output
	head = pnode1;																//initialize the first node
	
	while ( fscanf(fp, "%14s %d %d %d %s\n", temp.name, &temp.ID, &temp.amount, &temp.price, temp.type) != EOF ){		//read each line in the file.txt until EOF
		pnode2 = (struct node*)malloc(sizeof(struct node));						//equire memory cells
		//copy from temp to pnode2
		strcpy( pnode2 -> name, temp.name);
		pnode2->ID = temp.ID;
		pnode2->amount = temp.amount;
		pnode2 ->price = temp.price;
		strcpy( pnode2 -> type, temp.type );
		pnode1 -> next= pnode2;													//create for the next list(node)
		//copy finished 
		printf("\t\t|* %14s \t%d   \t%d   \t%d   \t%s \t*|\n",pnode2 -> name,pnode2->ID,pnode2->amount,pnode2 ->price,pnode2 -> type);//output test
		pnode1 = pnode2;
	}
	printf("\t\t|********************************************************|\n");
	pnode2 -> next = NULL;
	
	fclose(fp);																	//Close the file.text

	return head;																//return the structure including many outcomes
}

int main(){
	struct node *head;
	head=initialization();
	Mode(head);																	//call the "Mode" function
	return 0;
}

struct node *Mode(struct node *head){											//This function is used to judge identity
	int Mode;

	Mode = welcome();															//call the "welcome" function and show the original surface
	if (Mode == 0)																//If an administrator, call the "administrator" function                
		administrator(head);
	else																		//If a customer, call the "customer" function   
		customer(head);
	return 0;
}

int welcome(){																	//This function is used to print welcome menu. choose as admin or customer
	printf("\n\n\n\t|$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$|\n");
	printf("\t|                                                                 |\n");
	printf("\t|              Welcome to Use Auto Seller System!            	  |\n");
	printf("\t|                                                                 |\n");
	printf("\t|                 Please choose your identity:                    |\n");
	printf("\t|                                                                 |\n");
	printf("\t|   Administrator                               -- Press 0        |\n");
	printf("\t|   Customer                                    -- Press 1        |\n");
	printf("\t|                                                                 |\n");
	printf("\t|$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$|\n");
	int inputNum;
	scanf("%d",&inputNum);														//Read the identity
	if ((inputNum ==0)||(inputNum ==1))
		return inputNum;														//END if user doesn't input one or two
	else {																		//Tip : only enter 0 or 1
		printf("\n\n\t*==*WRONG INPUT!!!*===*\n\n");
		printf("\t*==*Please enter 0 or 1!*===*\n\n\n");
		inputNum = welcome();
		return inputNum;
	}
}

struct node *administrator(struct node *head){									//This function is used to tip the administrator enter password.
	int password;
	printf("\t|$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$|\n");
	printf("\t|                                                                 |\n");
	printf("\t|                     Input the password                          |\n");
	printf("\t|                                                                 |\n");
	printf("\t|             Input 000000 to back to parent menu                 |\n");
	printf("\t|                                                                 |\n");
	printf("\t|$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$|\n");
	scanf("%d",&password);
	if (password == 000000)														//back to "mode" function
		Mode(head);
	else if (password == 123456)												//password is right
		AdminMenu(head); 
	else																		//Password is wrong, back to this function again to re-enter password.
		printf("\n\n*==*\n*===PASSWORD is WRONG!\n\n");
	administrator(head);
	return 0;
}

struct node *AdminMenu(struct node *head) {										//This function is for the administrator to choose the action.
	int i;
	struct node *list1,*list2,*aim;
	DrinkList(head);
	
	do {																		//print the menu
		printf("\t|$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$|\n");
		printf("\t|                                                                 |\n");
		printf("\t|                 Welcome to administrator menu!                  |\n");
		printf("\t|                                                                 |\n");
		printf("\t|              Please Select The Following Operation:             |\n");
		printf("\t|                                                                 |\n");
		printf("\t|   Adjust The Price:                            -- Press 1       |\n");
		printf("\t|   Modify The Amount Of Beverage:               -- Press 2       |\n");
		printf("\t|   Add A New Beverage Kind:                     -- Press 3       |\n");
		printf("\t|   Delete A Beverage Kind:                      -- Press 4       |\n");
		printf("\t|   Back                                         -- Press 5       |\n");
		printf("\t|   Save and Exit                                -- Press 6       |\n");
		printf("\t|                                                                 |\n");
		printf("\t|$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$|\n");
		printf("\n\n\n\n");

		printf("Please Input Number:");
		scanf("%d", &i);														//read the number

		switch (i) {															//Use a switch to judge administrator's operation.
			case 1: Adjust(head); break;										//in all of these following functions, pass the head structured parament
			case 2: Modify(head); break;
			case 3: Add(head); break;
			case 4: Delete(head); break;
			case 5: Back(head); break;
			case 6: Exit(head); break;
			default: printf("Number should between 1 -- 7!\n");
		}

	} while (1);																//keep looping while in default case
	return 0;
}

struct node *DrinkList(struct node *head){										//use the  pointer variable to pass the parament
	struct node *list1,*list2;

	list1 = head;
	printf("\t|$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$|\n");
	printf("\t|                         * DRINK MENU *                                  |\n");
	printf("\t|                                                                         |\n");
	printf("\t|       Drink Price     ID    Amount    Price    Warm/Cold                |\n");
	printf("\t|                                                                         |\n");
	printf("\t|                                                                         |\n");

	 do{		
		list2 =list1;
		printf("\t|     %14s \t%-3d \t%-3d \t%-3d \t%2s                        |\n",list1 -> name,list1->ID,list1->amount,list1 ->price,list1 -> type);
																				//Print the first line of the file (titles)
		list1 = list2 -> next;
	}
	while (list1 -> next !=NULL);
	printf("\t|     %14s \t%-3d \t%-3d \t%-3d \t%2s                        |\n",list1 -> name,list1->ID,list1->amount,list1 ->price,list1 -> type);
																				//Print the rest lines of the file
	

	printf("\t|                                                                         |\n");
	printf("\t|                                                                         |\n");
	printf("\t|$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$|\n");
	return head;
}
	

struct node *Adjust(struct node *head) {										//This function is for the administrator to adjust the price.
	struct node *list1,*list2,*aim;
	head = DrinkList(head);
	int ID,NewPrice;
	printf("$$$$$Adjust The Price$$$$$\n");
	printf("Input the ID of beverage:\n");
	scanf("%d",&ID);															//Read the ID
	aim=search(head,ID);
	if(aim == NULL){															//If print the wrong ID
		printf("ERROR!Cannot find the id\n");
		AdminMenu(head);
	}
	printf("Input the new price of this beverage:\n");
	scanf("%d",&NewPrice);														//Read the new price
	aim -> price= NewPrice;														//re-assign the price
	AdminMenu(head);															//call the "AdminMenu" function
	return 0;
}


struct node *search(struct node *head,int ID){									//This function is used to search ID.
	struct node *aim;
	aim = head;
	while ((aim != NULL)&&(aim -> ID != ID))
		aim = aim -> next;
	return aim;
}

struct node *Modify(struct node *head) {										//This function is for the administrator to modify the amount.
	struct node *list1,*list2,*aim;
	head = DrinkList(head);
	int ID,NewAmount;
	printf("$$$$$Modify The Amount$$$$$\n");
	printf("Input the ID of beverage:\n");
	scanf("%d",&ID);															//read the ID
	aim=search(head,ID);
	if(aim == NULL){															//If print the wrong ID
		printf("ERROR!Cannot find the id\n"); 
		AdminMenu(head);
	}
	printf("Input the new amount of this beverage:\n");
	scanf("%d",&NewAmount);														//Read the new amount
	aim -> amount= NewAmount;													//re-assign the amount
	AdminMenu(head);															//call the "AdminMenu" function
	return 0;
}
struct node *Add(struct node *head) {											//This function is for the administrator to add a new king of drink.
	
	struct node temp,*tail,*newb,*last;
	bool wrongswitch = 0;
	newb = (struct node*)malloc(sizeof(struct node));							//allocate new memory
	printf("Add A New Beverage Kind\n");
	
	while (wrongswitch == 0){
		printf("Input the new ID. The ID must between 1 and 999 and cannot be same as other ID:");
		scanf("%d",&temp.ID);													//read the new id
		wrongswitch =0;
		if((temp.ID<=0)||(temp.ID>=1000)){										//If print the ID is wrong.
			printf("WRONG INPUT!!!");
			continue;	
		}
		tail = head;															//assign the final node 
		while ((tail != NULL)&&(tail -> ID != temp.ID)){						//Reconnect the new linklist.
			last = tail;
			tail = tail -> next;	
			wrongswitch = 1;
		}
		if(last -> ID == temp.ID){
			printf("WRONG INPUT!!!");
			wrongswitch = 0;
			continue;
		}
	}	
	printf("Input the name of the new beverage.");								//New information for storing new drinks.
	scanf("%s",temp.name);
	printf("Input the amount of the new beverage.");
	scanf("%d",&temp.amount);
	printf("Input the price of the new beverage.");
	scanf("%d",&temp.price);
	printf("Input the type(C/W/WC).");
	scanf("%s",temp.type);
	strcpy( newb -> name, temp.name);											//Assignment the new information
		newb->ID = temp.ID;														//pass a new ID
		newb->amount = temp.amount;												//pass a new amount
		newb ->price = temp.price;												//pass a new price
		strcpy( newb -> type, temp.type );
		last -> next = newb;
		newb -> next = NULL;
	AdminMenu(head);															//revoke the AdminMenu function and back to the admin surface
	return head;
}
struct node *Delete(struct node *head) {										//This function is for the administrator to dalete a new beverage.
	int ID;
	int sure;
	struct node *aim, *p;
	printf("Delete A Beverage Kind\n");
	printf("Input the ID of the Beverage you want to DELETE:");
	scanf("%d",&ID);															//read the id
	aim=search(head,ID);
	if(aim == NULL){															//If the entered ID does not exist.
		printf("ERROR!Cannot find the id\n");
		AdminMenu(head);														//revoke the AdminMenu function and back to the admin surface
	}
	printf("Delete %s, are you sure?\nIf you are sure, input 0\nIf not, input 1",aim->name);
	scanf("%d",&sure);
	if (sure ==1)
		AdminMenu(head);
	else if (sure ==0){
		if(aim == head){														//If aim is the head of linklist
			head =head ->next;
		}
		else{ 
			p = head;
			while ((p != NULL  )&& ( p-> next != aim))							//Reconnect the new linklist.
				p = p -> next;
			if (p != NULL)
				p -> next = p -> next -> next;
		}
		free(aim);																//free the allocation
	}
	else {
		printf("WRONG INPUT!!");
		AdminMenu(head);														//revoke the AdminMenu function and back to the admin surface
	}
	AdminMenu(head);															//revoke the AdminMenu function and back to the admin surface
	return 0;
}

void Back(struct node *head) {													//This function is used to back to the "Mode" function.
	Mode(head);
}
void Exit(struct node *head) {													//This function is used to exit.
	struct node *aim;
	FILE *fp;
	fp = fopen( "file.txt", "w" );												//open the file.txt
	fprintf(fp,"Names		ID	Amount	Price	Type\n");
		aim = head;
	while (aim != NULL){	
	fprintf(fp,"%s\t\t%d\t%d\t%d\t%s\n",aim ->name,aim -> ID,aim -> amount,aim -> price,aim -> type);	//pass the data to store into the file.txt
	aim = aim -> next;
	}
	fclose(fp);
	exit(0);																	//exit the programme
}

struct node *customer(struct node *head){										//This function is for the customer,show the drink menu.
	int ID,sure,WC,money,diff,change;
	char WCdetecter[3]="WC";
	struct node *list1,*list2,*aim;

	list1 = head;
	printf("\t|$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$|\n");
	printf("\t|                                                                         |\n");
	printf("\t|                   Welcome to Use Auto Seller System                     |\n");
	printf("\t|                                                                         |\n");
	printf("\t|                Please Select The Following Drinks by input ID:          |\n");
	printf("\t|                                                                         |\n");
	printf("\t|       Drink Price     ID    Amount    Price    Warm/Cold                |\n");
	 do{		
		list2 =list1;
		printf("\t|     %14s \t%-3d \t%-3d \t%-3d \t%2s                        |\n",list1 -> name,list1->ID,list1->amount,list1 ->price,list1 -> type);
		list1 = list2 -> next;
	}
	while (list1 -> next !=NULL);												//check whether it is empty
	printf("\t|     %14s \t%-3d \t%-3d \t%-3d \t%2s                        |\n",list1 -> name,list1->ID,list1->amount,list1 ->price,list1 -> type);
																				//pass the data to the first line

	printf("\t|                                                                         |\n");
	printf("\t|             Input 0 to bake to parent menu                              |\n");
	printf("\t|$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$|\n");
	scanf("%d",&ID);
	if (ID ==0)																	//back to the "Mode" menu
		Mode(head);
	else {
		aim=search(head,ID); 
		if(aim == NULL){														//Input the wrong ID
			printf("ERROR!Cannot find the id\n\n");
			customer(head);														//quit to customer surface
		}
		else {
			if(aim ->amount <=0){
				printf("SORRY!!! SOLD OUT!!!\n");
				customer(head);													//quit to customer surface
			}
			if(aim ->type[1] == 'C'){
				printf("Warm or Cold?\nIf warm, input 0\nIf cold, input 1\n\n");
				scanf("%d",&WC);
				if(WC ==0)														//Judge warm or cold
					printf("Warm.\n");
				else if (WC ==1)
					printf("Cold.\n");
			}
			printf("A cup of %s\n",aim->name);
			}
			printf("Are you sure?\n\nIf you are sure, input 0\n\nIf not, input 1\n\n",aim->name);		//for interact with customer before affording
		scanf("%d",&sure);
		if (sure !=0){
			if (sure != 1)
				printf("WRONG INPUT!!\n");
			customer(head);														//revoke the customer function and back to the customer surface
		}
		else {																	//Collect money
			printf("You want to buy a cup of %s\n",aim->name);
			printf( "Its price is %d yuan.\n",aim->price);
			printf( "please input the money:\n" );
			printf( "*Only accept integer money*\n" );
			scanf( "%d",&money);
			diff = aim->price - money;											//find the difference to charge
		
			if (money  == aim->price)											//If money is equal to the price.
				printf( "Welcome to visit next time!\n" );
			else if (money  > aim->price)										//If money is more than the price.
				printf( "Your change is %d yuan.Welcome to visit next time!\n",money - aim->price );
			else{																//If money is less than the price.
				while (diff >0) {												//If money is less than the price again.
					printf( "You didn't give enough money. Please give another %d yuan.\n",diff);
					scanf( "%d",&change);
					diff -= change;
				}
				if (change  == aim->price-money){								//If money is equal to the price.
					printf( "Welcome to visit next time!\n" );
				}
				else {															//If money is more than the price.
					printf( "Your change is %d yuan.Welcome to visit next time!\n\n",-diff);
				}
			}
			 aim->amount--;
		}
		customer(head);
		return 0;
	}
}
